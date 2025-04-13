#!/bin/zsh

# Paths for config files
CONFIG_DIR="$HOME/.config/zsh-ai-complete"
CONFIG_FILE="$CONFIG_DIR/ai-providers.json"
SELECTION_FILE="$CONFIG_DIR/selected-provider.txt"

# Ensure the config file exists
ensure_config_file() {
  if [[ ! -f "$CONFIG_FILE" ]]; then
    mkdir -p "$CONFIG_DIR"

    # Try to resolve the correct example file path based on environment
    if [[ -n "$ZSH_CUSTOM" && -f "$ZSH_CUSTOM/plugins/zsh-ai-complete/example.ai-providers.json" ]]; then
      EXAMPLE_FILE="$ZSH_CUSTOM/plugins/zsh-ai-complete/example.ai-providers.json"
    elif [[ -f "${0:A:h}/example.ai-providers.json" ]]; then
      EXAMPLE_FILE="${0:A:h}/example.ai-providers.json"
    else
      echo "[ERROR] Could not locate example.ai-providers.json"
      return 1
    fi

    cp "$EXAMPLE_FILE" "$CONFIG_FILE"
  fi
}

# Save the user's selected provider (overwrites each time)
save_selection() {
  selected_provider="$1"
  echo "$selected_provider" | sed '1d' > "$SELECTION_FILE"
}

search_ia_widget() {
  if [[ ! -s "$SELECTION_FILE" ]]; then
    return 1
  fi

  selected_provider=$(<"$SELECTION_FILE")
  provider_info=$(jq -r ".\"$selected_provider\"" "$CONFIG_FILE")

  if [[ -z "$provider_info" || "$provider_info" == "null" ]]; then
    return 1
  fi

  API_TOKEN=$(echo "$provider_info" | jq -r '.token')
  API_URL=$(echo "$provider_info" | jq -r '.url')
  API_MODEL=$(echo "$provider_info" | jq -r '.model')
  SYSTEM_MESSAGE=$(echo "$provider_info" | jq -r '.system_message')
  OUTPUT_PATH=$(echo "$provider_info" | jq -r '.output_path')

  selected=$(fzf --ansi --height=100% --layout=reverse --multi --expect=esc,ctrl-c,ctrl-e \
    --bind "change:reload:bash -c '
      TEXT=\"\$1\"
      sleep 0.5
      if [ -n \"\$TEXT\" ]; then
        CURL_CMD=(curl -s)
        CURL_CMD+=( -H \"Content-Type: application/json\" )

        if [ -n \"${API_TOKEN}\" ]; then
          CURL_CMD+=( -H \"Authorization: Bearer ${API_TOKEN}\" )
        fi

        CURL_CMD+=( \"${API_URL}\" -d \"
        {
          \\\"model\\\": \\\"${API_MODEL}\\\",
          \\\"messages\\\": [
            {\\\"role\\\": \\\"system\\\", \\\"content\\\": \\\"${SYSTEM_MESSAGE}\\\"},
            {\\\"role\\\": \\\"user\\\", \\\"content\\\": \\\"\$TEXT\\\"}
          ],
          \\\"stream\\\": false
        }\"
        )

        \"\${CURL_CMD[@]}\" | jq -r ${OUTPUT_PATH} | awk \"BEGIN{RS=\\\"\\\"; FS=\\\"\\\\n\\\"} {for (i=1; i<=NF; i++) if (\\\$i != \\\"\\\") print \\\$i}\"
      else
        echo \"\"
      fi
    ' -- {q}" \
    --preview-window=up:70%:wrap \
    --prompt="Search for content in ($selected_provider): " \
    --phony --disabled < /dev/null)

  exit_code=$?
  key=$(echo "$selected" | head -n1)
  choice=$(echo "$selected" | tail -n +2)

  # [[ "$key" == "ctrl-e" ]] && show_providers && return 42
  if [[ "$key" == "ctrl-e" ]]; then
      show_providers
      return 42
  fi

  [[ "$key" == "esc" || "$key" == "ctrl-c" ]] && LBUFFER="" && return 0

  [[ -n "$selected" ]] && LBUFFER+="$selected"
  return 0
}

show_providers() {
  providers=$(jq -r 'keys[]' "$CONFIG_FILE")

  selected_provider=$(echo "$providers" | fzf --expect=esc,ctrl-c --prompt="Choose an AI provider: ")

  show_providers_key=$(echo "$selected_provider" | head -n1)
  show_providers_choice=$(echo "$selected_provider" | tail -n +2)

  [[ "$show_providers_key" == "esc" || "$show_providers_key" == "ctrl-c" ]] && return 0

  save_selection "$selected_provider"
  return 42
}

ai_complete_widget() {
  while true; do
    ensure_config_file
    search_ia_widget
    search_ia_widget_exit_code=$?

    if [[ $search_ia_widget_exit_code -eq 1 ]]; then
      show_providers
      show_providers_exit_code=$?

      if [[ "$show_providers_exit_code" -eq 0 ]]; then
        break
      fi

      continue
    fi

    if [[ "$search_ia_widget_exit_code" -eq 0 ]]; then
      break
    fi
  done
}
