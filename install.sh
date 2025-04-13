#!/bin/bash

set -e

PLUGIN_NAME="zsh-ai-complete"
PLUGIN_FILE="zsh-ai-complete.plugin.zsh"
INSTALL_DIR="$HOME/.${PLUGIN_NAME}"
ZSHRC="$HOME/.zshrc"
CONFIG_DIR="$HOME/.config/${PLUGIN_NAME}"
CONFIG_FILE="$CONFIG_DIR/ai-providers.json"
EXAMPLE_CONFIG="example.ai-providers.json"

print_info() {
  echo -e "\033[1;34m[INFO]\033[0m $1"
}

print_success() {
  echo -e "\033[1;32m[SUCCESS]\033[0m $1"
}

print_warning() {
  echo -e "\033[1;33m[WARNING]\033[0m $1"
}

print_error() {
  echo -e "\033[1;31m[ERROR]\033[0m $1"
}

# 1. Create config directory if it doesn't exist
if [[ ! -d "$CONFIG_DIR" ]]; then
  print_info "Creating config directory at $CONFIG_DIR..."
  mkdir -p "$CONFIG_DIR"
fi

# 2. Copy example config if it doesn't exist yet
if [[ ! -f "$CONFIG_FILE" ]]; then
  if [[ -f "$EXAMPLE_CONFIG" ]]; then
    cp "$EXAMPLE_CONFIG" "$CONFIG_FILE"
    print_success "Config file created at $CONFIG_FILE."
  else
    print_error "Example config file not found: $EXAMPLE_CONFIG"
    exit 1
  fi
else
  print_warning "Config file already exists: $CONFIG_FILE"
fi

# 3. Check required dependencies
print_info "Checking required dependencies..."
for cmd in curl jq fzf bat; do
  if ! command -v $cmd > /dev/null 2>&1; then
    print_warning "Missing dependency: $cmd. Please install it manually."
  else
    echo "[OK] Found: $cmd"
  fi
done

# 4. Ask how the plugin will be used
echo
print_info "How do you plan to use the plugin?"
echo "1) Manual (add 'source' to .zshrc)"
echo "2) Oh My Zsh (as a plugin in plugins=(...))"
echo "3) Zinit"
echo "4) Antigen"
echo "5) Other"

read -p "Enter your choice (1-5): " method

case $method in
  1)
    if ! grep -q "$PLUGIN_FILE" "$ZSHRC"; then
      print_info "Adding source command to $ZSHRC..."
      echo "source \"$INSTALL_DIR/$PLUGIN_FILE\"" >> "$ZSHRC"
      print_success "Plugin added to .zshrc."
    else
      print_warning "Plugin already included in .zshrc."
    fi
    ;;
  2|3|4)
    print_info "No action needed. Plugin managers like OMZ, Zinit, and Antigen load the plugin automatically."
    ;;
  *)
    print_warning "No change made to .zshrc."
    ;;
esac

# 5. Ask to reload terminal
read -p $'\nWould you like to reload the terminal now? (y/N) ' response
if [[ "$response" =~ ^[yY]$ ]]; then
  if command -v omz &> /dev/null; then
    print_info "Reloading using omz..."
    omz reload
  else
    print_info "Reloading using source..."
    source "$ZSHRC"
  fi
fi

print_success "Installation complete! Press Ctrl+U in your terminal to activate the AI assistant."
