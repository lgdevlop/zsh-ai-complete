# Keyboard Shortcuts for zsh-ai-complete

This document lists and explains the default keyboard shortcuts available in the `zsh-ai-complete` plugin.

## 🧠 Main Shortcut

### `Ctrl+U`

- **Action:** Triggers the AI assistant widget.
- **Behavior:** Opens an interactive FZF interface where you can type a partial command or a question.

#### Modes of Use (typed inside FZF, not in terminal)

##### 1. Command Completion

- Inside the FZF prompt, type part of a terminal command.
- The assistant will suggest one or more possible completions based on what you typed.

##### 2. Natural Language to Command

- Type a full question or instruction in plain language.
- Example: `how do I see the logs of a running docker container`
- The assistant will interpret it and suggest relevant terminal commands.

> 💡 If your selected AI provider supports multiple languages, you can ask your question in your native language as well (e.g., Portuguese, Spanish, etc.).

This dual behavior allows both experienced and new users to get productive suggestions based on either syntax or intent.

---

## 🔁 Dynamic Selection Shortcuts (inside FZF)

Once the AI assistant is triggered and the FZF interface is visible:

### `Ctrl+E`

- **Action:** Change the active AI provider.
- **Effect:** Opens a selection menu listing all providers defined in `ai-providers.json`.

### `ESC` or `Ctrl+C`

- **Action:** Cancel the current suggestion session.
- **Effect:** Aborts the assistant without modifying your command buffer.

---

## 📝 Notes

- The default shortcut (`Ctrl+U`) can be changed by modifying the `bindkey` line inside the `zsh-ai-complete.plugin.zsh` file.
- All shortcuts can be remapped to suit your preferences.

---

_Last updated: 2025-04-13_
