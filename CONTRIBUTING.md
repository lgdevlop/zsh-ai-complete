# Contributing to zsh-ai-complete

Thank you for your interest in contributing to **zsh-ai-complete**! 🎉

This project is focused on making developers more productive by providing intelligent Zsh command completion using AI.

---

## 🚀 How to Contribute

1. **Fork** this repository
2. **Clone** your fork:

   ```bash
   git clone https://github.com/your-user/zsh-ai-complete.git
   ```

3. **Create a new branch**:

   ```bash
   git checkout -b feature/my-contribution
   ```

4. **Make your changes**
5. **Submit a Pull Request** to the `main` branch

---

## 📂 Types of Contributions

We welcome contributions of all kinds:

- 🐛 Bug fixes
- 🚀 Performance or compatibility improvements
- 🧠 Support for new AI providers
- 📝 Improvements to documentation or examples
- 🎮 UX enhancements and new keyboard shortcuts

---

## 🧪 Coding Standards

- Scripts should be written in **Zsh** or **POSIX-compatible Bash**
- Comments should be clear and preferably in **English**
- Use descriptive variable names (e.g., `API_TOKEN`, `CONFIG_FILE`)
- Test your changes before submitting

---

## ✅ Test Checklist

Before submitting your PR:

- [ ] The plugin loads without errors via `zsh-ai-complete.plugin.zsh`
- [ ] Shortcuts like `Ctrl+U` and `Ctrl+E` behave correctly
- [ ] The plugin works with configured AI models (OpenAI, Ollama, Gemini, etc.)
- [ ] Your change does not break interactive flows (FZF, provider switching, etc.)

---

## 📦 Project Structure

```text
.
├── zsh-ai-complete.plugin.zsh       # Main plugin entry point
├── run.sh                           # Core logic: interaction with APIs and fzf
├── install.sh                       # Interactive installer script
├── Makefile                         # CLI automation for install/deps/reload
├── example.ai-providers.json        # Sample config for AI providers
├── project-docs/                    # Markdown docs (shortcuts, examples)
└── assets/                          # Logos, images, etc.
```

---

## ✍️ Commit Guidelines

We follow a structured commit format using types, scopes, and emojis.
Please refer to [`COMMITS.md`](./COMMITS.md) for examples and guidance.

---

## 🛡️ Code of Conduct

Please read our [Code of Conduct](./CODE_OF_CONDUCT.md). By contributing, you agree to follow it.

---

Thank you for helping improve `zsh-ai-complete` 💚
