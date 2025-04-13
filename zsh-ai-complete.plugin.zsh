# Detect plugin directory
PLUGIN_DIR="${0:A:h}"

# Load the main AI assistant logic
source "$PLUGIN_DIR/run.sh"

# Register ZLE widget
zle -N ai_complete_widget

# Bind the activation shortcut (Ctrl+U)
bindkey '^U' ai_complete_widget
