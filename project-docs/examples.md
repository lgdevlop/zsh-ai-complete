# Examples: Using zsh-ai-complete

This document demonstrates two primary use cases for the plugin: completing partial shell commands and converting natural language into shell commands.

---

## 🧠 Scenario 1: Command Completion

### Scenario 1 - Steps

1. Press `Ctrl+U` to open the AI assistant interface (FZF prompt).
2. Type part of a command inside the FZF prompt:

   ```zsh
   docker logs --f
   ```

3. The assistant returns suggestions based on your input.

### Scenario 1 - Example AI Suggestion

```zsh
docker logs --follow
```

### Scenario 1 - Result

You select one of the suggestions, and the completed command is inserted into your terminal buffer.

---

## 🌍 Scenario 2: Natural Language to Command

### Scenario 2 - Steps

1. Press `Ctrl+U` to open the AI assistant interface.
2. Type a question or instruction inside the FZF prompt:

   ```text
   how do I see the logs of a running docker container?
   ```

   > 💬 You can also type this in your native language if your AI provider supports it (e.g., `como ver os logs de um container docker em execução?`).

3. The assistant returns useful commands.

### Scenario 2 - Example AI Suggestions

```zsh
docker ps
# copy container ID
docker logs -f <container_id>
```

### Scenario 2 - Result

The assistant provides relevant commands. You choose one of the commands, and apply them directly in your terminal.

---

## Tips

- Use `Ctrl+E` to switch between AI providers dynamically.
- Use `ESC` or `Ctrl+C` to cancel the assistant interface.

_Last updated: 2025-04-13_
