# Plugin metadata
PLUGIN_NAME = zsh-ai-complete
CONFIG_DIR = $(HOME)/.config/$(PLUGIN_NAME)
CONFIG_FILE = $(CONFIG_DIR)/ai-providers.json
EXAMPLE_FILE = example.ai-providers.json

# Default target
.PHONY: help
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available targets:"
	@echo "  install        Install the plugin and create configuration"
	@echo "  uninstall      Remove plugin configuration files"
	@echo "  check-deps     Check for required dependencies"
	@echo "  reload         Reload Zsh configuration"

# Install plugin (config only)
.PHONY: install
install:
	@echo "[INFO] Creating config directory if needed..."
	@mkdir -p $(CONFIG_DIR)
	@if [ ! -f $(CONFIG_FILE) ]; then \
		if [ -f $(EXAMPLE_FILE) ]; then \
			cp $(EXAMPLE_FILE) $(CONFIG_FILE); \
			echo "[SUCCESS] Created config file at $(CONFIG_FILE)"; \
		else \
			echo "[ERROR] Example config file not found."; \
			exit 1; \
		fi; \
	else \
		echo "[WARNING] Config file already exists at $(CONFIG_FILE)"; \
	fi

# Remove config
.PHONY: uninstall
uninstall:
	@rm -rf $(CONFIG_DIR)
	@echo "[INFO] Removed configuration directory: $(CONFIG_DIR)"

# Check dependencies
.PHONY: check-deps
check-deps:
	@echo "[INFO] Checking required dependencies..."
	@for cmd in curl jq fzf bat; do \
		if ! command -v $$cmd > /dev/null 2>&1; then \
			echo "[MISSING] Dependency not found: $$cmd"; \
		else \
			echo "[OK] Found: $$cmd"; \
		fi; \
	done

# Reload Zsh config
.PHONY: reload
reload:
	@if command -v omz > /dev/null 2>&1; then \
		echo "[INFO] Reloading Zsh with omz..."; \
		omz reload; \
	else \
		echo "[INFO] Reloading Zsh with source..."; \
		source ~/.zshrc; \
	fi
