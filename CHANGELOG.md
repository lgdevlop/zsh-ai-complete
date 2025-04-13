# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

### 1.0.1-beta.0 (2025-04-13)


### 👷 Continuous Integration

* **release:** 🧹 deprecate legacy release.yml in favor of split workflows ([bb28829](https://github.com/lgdevlop/zsh-ai-complete/commit/bb2882958aa092984b6726359e53adcb669c9dc4))

## [1.0.0] - 2025-04-13

### Added

- Initial public release of `zsh-ai-complete`
- Support for OpenAI, Ollama, and Gemini providers
- FZF-based interactive UI for command generation
- Dual-mode input: partial command completion and natural language
- Configuration system with `ai-providers.json`
- Keyboard shortcuts: `Ctrl+U` to activate, `Ctrl+E` to switch provider
- Example config file: `example.ai-providers.json`
- Install script with smart integration for manual or plugin manager usage
- Makefile with targets for install, uninstall, check-deps, reload
- Project documentation in `project-docs/`
- README with setup instructions, badges, and author credit

---

## [Unreleased]

### Planned

- Command caching for instant responses
- Themed output and preview enhancements
- Metrics and feedback system for usage tuning
- Advanced error handling and logging
