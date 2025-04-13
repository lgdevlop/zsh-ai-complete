# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

## [1.1.0-rc.0](https://github.com/lgdevlop/zsh-ai-complete/compare/v1.1.0-beta.0...v1.1.0-rc.0) (2025-04-13)


### ♻️ Code Refactoring

* **ci:** 🧪 convert beta release workflow to manual with branch and suffix input ([1df7ad2](https://github.com/lgdevlop/zsh-ai-complete/commit/1df7ad2fef1d3ffccc79f63cbf941b18d3b83645))
* **ci:** 🚀 convert stable release workflow to manual with version and branch input ([8cd054a](https://github.com/lgdevlop/zsh-ai-complete/commit/8cd054a61280336c2de9938c2d5a3adfab81836d))

## [1.1.0-beta.0](https://github.com/lgdevlop/zsh-ai-complete/compare/v1.0.0...v1.1.0-beta.0) (2025-04-13)


### 👷 Continuous Integration

* **release:** 🤖 add changelog generation workflow triggered by tags and main ([5257ff6](https://github.com/lgdevlop/zsh-ai-complete/commit/5257ff66031040246c4fc26cb0404ad656cfa730))
* **release:** 🧪 create beta release workflow on main push ([69e3d47](https://github.com/lgdevlop/zsh-ai-complete/commit/69e3d47cf322e11af5595f770c9defb90ef55e52))
* **release:** 🧹 deprecate legacy release.yml in favor of split workflows ([bb28829](https://github.com/lgdevlop/zsh-ai-complete/commit/bb2882958aa092984b6726359e53adcb669c9dc4))
* **release:** 🚀 add release-stable workflow triggered by version tags ([50bb45f](https://github.com/lgdevlop/zsh-ai-complete/commit/50bb45f41d8904623397fa206e4ad773f8b2290e))
* **release:** 🚀 create GitHub release automatically from tags ([913c001](https://github.com/lgdevlop/zsh-ai-complete/commit/913c0011f35ce24b7e89532b665981db144207d9))


### 🐛 Bug Fixes

* **ci:** 🏷  add fallback to create git tag if standard-version fails ([bfd67cf](https://github.com/lgdevlop/zsh-ai-complete/commit/bfd67cfc9e6e2744e34373a40851bc42579b6295))
* **ci:** 🔧 add Git identity config for changelog commit ([d2141c6](https://github.com/lgdevlop/zsh-ai-complete/commit/d2141c637b92051009e9060a059f9ea3ce17d1fe))
* **ci:** 🧠 fetch full git history to enable tag creation by standard-version ([6014dd2](https://github.com/lgdevlop/zsh-ai-complete/commit/6014dd2cda4248629f34525b83d92486d5af3ed7))
* **ci:** 🛠  ensure git push and tag from standard-version in beta workflow ([5794bbb](https://github.com/lgdevlop/zsh-ai-complete/commit/5794bbb5921809a1ccc6f848cafa1d98fc442886))
* **readme:** 🖼️ include logo image by correcting .gitignore ([d17b4e6](https://github.com/lgdevlop/zsh-ai-complete/commit/d17b4e631d201ed01d13c4bf6b47d8c06b72ff3b))
* **release:** 🏷  enable automatic tag creation in beta releases ([4b5a820](https://github.com/lgdevlop/zsh-ai-complete/commit/4b5a82079ce85dc875b57ea15bb7edbcf579d6b0))
* **release:** 🔖 force version in package.json based on pushed tag ([a03f944](https://github.com/lgdevlop/zsh-ai-complete/commit/a03f944a261bcbe04cc1cf210539c193ec9189ba))
* **release:** 🛠  rename and restore valid .versionrc.json config ([3fd3286](https://github.com/lgdevlop/zsh-ai-complete/commit/3fd3286d77a1709763c13163426e4d7c6f7715e0))


### ✨ Features

* **ci:** 🚀 auto-create GitHub release from tag using CLI ([0c0fc71](https://github.com/lgdevlop/zsh-ai-complete/commit/0c0fc7126d2a7db3ca757d70e065b541dd45ab45))
* **ci:** 🚀 create GitHub release for stable versions ([7a8a006](https://github.com/lgdevlop/zsh-ai-complete/commit/7a8a0062cb352038f459d80caecfd5b9a2d206bf))


### 🔧 Maintenance

* **ci:** 🔥 remove deprecated github-release workflow ([f977834](https://github.com/lgdevlop/zsh-ai-complete/commit/f97783416ae4218988bc25d0736a19caec46bb10))
* **ci:** 🔥 remove deprecated release workflow ([cc166cf](https://github.com/lgdevlop/zsh-ai-complete/commit/cc166cfa60b215bfe7f66fe2995821937ca0363f))
* **husky:** 🔧 remove deprecated bootstrap lines from commit-msg hook ([43f8aac](https://github.com/lgdevlop/zsh-ai-complete/commit/43f8aac0ec8effaa438664a02b933216b7d9e22c))
* **release:** 🔧 setup versionrc with emoji-based changelog sections ([67fc7f5](https://github.com/lgdevlop/zsh-ai-complete/commit/67fc7f5098bbf8bf4fa4ab426e1ee0943c6f5fc9))
* **release:** 🛠  add standard-version with release and changelog scripts ([a9d0f93](https://github.com/lgdevlop/zsh-ai-complete/commit/a9d0f93b682b5989741395fcbdd87d5c3b742f77))
* **release:** 1.0.1-beta.0 ([0fa55e0](https://github.com/lgdevlop/zsh-ai-complete/commit/0fa55e05678e9c706de7ac4cfe78ff211a68dd53))
* **release:** 1.0.1-beta.1 ([2a5bed2](https://github.com/lgdevlop/zsh-ai-complete/commit/2a5bed232bcbbafa2fc04b1390422a129852eb97))
* **release:** 1.0.1-beta.2 ([58c73e3](https://github.com/lgdevlop/zsh-ai-complete/commit/58c73e3d0bba3812bd07ee4ddcc41e31221936f7))
* **release:** 1.0.1-beta.3 ([e04c5a7](https://github.com/lgdevlop/zsh-ai-complete/commit/e04c5a7c6cced5c4392c5de7e8727b2c739be2f4))
* **release:** 1.0.1-beta.4 ([145a608](https://github.com/lgdevlop/zsh-ai-complete/commit/145a608395214da15bc679ab46d7525a76cc8183))
* **release:** 1.1.0-beta.0 ([995afa1](https://github.com/lgdevlop/zsh-ai-complete/commit/995afa184aae253e054c3724953cdcc4f7edca08))
* **release:** 1.1.0-beta.1 ([2a73f4c](https://github.com/lgdevlop/zsh-ai-complete/commit/2a73f4ce85f6a6a03acfaf96d2deadee9cce4466))
* **release:** 1.1.0-beta.2 ([4615629](https://github.com/lgdevlop/zsh-ai-complete/commit/46156298ad64e3dd9336c30a0f626f2a0ac7c3db))
* **release:** 1.1.0-beta.3 ([a4e971f](https://github.com/lgdevlop/zsh-ai-complete/commit/a4e971f17ee9e15cdcdff4e1b265806f065d1868))
* **version:** 🔖 reset version to 1.0.0 after beta cleanup ([cf5a122](https://github.com/lgdevlop/zsh-ai-complete/commit/cf5a122978e7399128b1f70179d0ee3b06ac1585))

## [1.1.0-beta.3](https://github.com/lgdevlop/zsh-ai-complete/compare/v1.1.0-beta.0...v1.1.0-beta.3) (2025-04-13)


### ✨ Features

* **ci:** 🚀 create GitHub release for stable versions ([7a8a006](https://github.com/lgdevlop/zsh-ai-complete/commit/7a8a0062cb352038f459d80caecfd5b9a2d206bf))


### 🔧 Maintenance

* **ci:** 🔥 remove deprecated github-release workflow ([f977834](https://github.com/lgdevlop/zsh-ai-complete/commit/f97783416ae4218988bc25d0736a19caec46bb10))
* **ci:** 🔥 remove deprecated release workflow ([cc166cf](https://github.com/lgdevlop/zsh-ai-complete/commit/cc166cfa60b215bfe7f66fe2995821937ca0363f))
* **release:** 1.1.0-beta.1 ([2a73f4c](https://github.com/lgdevlop/zsh-ai-complete/commit/2a73f4ce85f6a6a03acfaf96d2deadee9cce4466))
* **release:** 1.1.0-beta.2 ([4615629](https://github.com/lgdevlop/zsh-ai-complete/commit/46156298ad64e3dd9336c30a0f626f2a0ac7c3db))

## [1.1.0-beta.2](https://github.com/lgdevlop/zsh-ai-complete/compare/v1.1.0-beta.0...v1.1.0-beta.2) (2025-04-13)


### ✨ Features

* **ci:** 🚀 create GitHub release for stable versions ([7a8a006](https://github.com/lgdevlop/zsh-ai-complete/commit/7a8a0062cb352038f459d80caecfd5b9a2d206bf))


### 🔧 Maintenance

* **ci:** 🔥 remove deprecated github-release workflow ([f977834](https://github.com/lgdevlop/zsh-ai-complete/commit/f97783416ae4218988bc25d0736a19caec46bb10))
* **release:** 1.1.0-beta.1 ([2a73f4c](https://github.com/lgdevlop/zsh-ai-complete/commit/2a73f4ce85f6a6a03acfaf96d2deadee9cce4466))

## [1.1.0-beta.1](https://github.com/lgdevlop/zsh-ai-complete/compare/v1.1.0-beta.0...v1.1.0-beta.1) (2025-04-13)


### ✨ Features

* **ci:** 🚀 create GitHub release for stable versions ([7a8a006](https://github.com/lgdevlop/zsh-ai-complete/commit/7a8a0062cb352038f459d80caecfd5b9a2d206bf))

## [1.1.0-beta.0](https://github.com/lgdevlop/zsh-ai-complete/compare/v1.0.1-beta.4...v1.1.0-beta.0) (2025-04-13)


### ✨ Features

* **ci:** 🚀 auto-create GitHub release from tag using CLI ([0c0fc71](https://github.com/lgdevlop/zsh-ai-complete/commit/0c0fc7126d2a7db3ca757d70e065b541dd45ab45))

### [1.0.1-beta.4](https://github.com/lgdevlop/zsh-ai-complete/compare/v1.1.0-beta.2...v1.0.1-beta.4) (2025-04-13)


### 👷 Continuous Integration

* **release:** 🧪 create beta release workflow on main push ([69e3d47](https://github.com/lgdevlop/zsh-ai-complete/commit/69e3d47cf322e11af5595f770c9defb90ef55e52))
* **release:** 🧹 deprecate legacy release.yml in favor of split workflows ([bb28829](https://github.com/lgdevlop/zsh-ai-complete/commit/bb2882958aa092984b6726359e53adcb669c9dc4))
* **release:** 🚀 add release-stable workflow triggered by version tags ([50bb45f](https://github.com/lgdevlop/zsh-ai-complete/commit/50bb45f41d8904623397fa206e4ad773f8b2290e))


### 🔧 Maintenance

* **release:** 1.0.1-beta.0 ([0fa55e0](https://github.com/lgdevlop/zsh-ai-complete/commit/0fa55e05678e9c706de7ac4cfe78ff211a68dd53))
* **release:** 1.0.1-beta.1 ([2a5bed2](https://github.com/lgdevlop/zsh-ai-complete/commit/2a5bed232bcbbafa2fc04b1390422a129852eb97))
* **release:** 1.0.1-beta.2 ([58c73e3](https://github.com/lgdevlop/zsh-ai-complete/commit/58c73e3d0bba3812bd07ee4ddcc41e31221936f7))
* **release:** 1.0.1-beta.3 ([e04c5a7](https://github.com/lgdevlop/zsh-ai-complete/commit/e04c5a7c6cced5c4392c5de7e8727b2c739be2f4))


### 🐛 Bug Fixes

* **ci:** 🏷  add fallback to create git tag if standard-version fails ([bfd67cf](https://github.com/lgdevlop/zsh-ai-complete/commit/bfd67cfc9e6e2744e34373a40851bc42579b6295))
* **ci:** 🧠 fetch full git history to enable tag creation by standard-version ([6014dd2](https://github.com/lgdevlop/zsh-ai-complete/commit/6014dd2cda4248629f34525b83d92486d5af3ed7))
* **ci:** 🛠  ensure git push and tag from standard-version in beta workflow ([5794bbb](https://github.com/lgdevlop/zsh-ai-complete/commit/5794bbb5921809a1ccc6f848cafa1d98fc442886))
* **release:** 🏷  enable automatic tag creation in beta releases ([4b5a820](https://github.com/lgdevlop/zsh-ai-complete/commit/4b5a82079ce85dc875b57ea15bb7edbcf579d6b0))

### [1.0.1-beta.3](https://github.com/lgdevlop/zsh-ai-complete/compare/v1.1.0-beta.2...v1.0.1-beta.3) (2025-04-13)


### 👷 Continuous Integration

* **release:** 🧪 create beta release workflow on main push ([69e3d47](https://github.com/lgdevlop/zsh-ai-complete/commit/69e3d47cf322e11af5595f770c9defb90ef55e52))
* **release:** 🧹 deprecate legacy release.yml in favor of split workflows ([bb28829](https://github.com/lgdevlop/zsh-ai-complete/commit/bb2882958aa092984b6726359e53adcb669c9dc4))
* **release:** 🚀 add release-stable workflow triggered by version tags ([50bb45f](https://github.com/lgdevlop/zsh-ai-complete/commit/50bb45f41d8904623397fa206e4ad773f8b2290e))


### 🔧 Maintenance

* **release:** 1.0.1-beta.0 ([0fa55e0](https://github.com/lgdevlop/zsh-ai-complete/commit/0fa55e05678e9c706de7ac4cfe78ff211a68dd53))
* **release:** 1.0.1-beta.1 ([2a5bed2](https://github.com/lgdevlop/zsh-ai-complete/commit/2a5bed232bcbbafa2fc04b1390422a129852eb97))
* **release:** 1.0.1-beta.2 ([58c73e3](https://github.com/lgdevlop/zsh-ai-complete/commit/58c73e3d0bba3812bd07ee4ddcc41e31221936f7))


### 🐛 Bug Fixes

* **ci:** 🧠 fetch full git history to enable tag creation by standard-version ([6014dd2](https://github.com/lgdevlop/zsh-ai-complete/commit/6014dd2cda4248629f34525b83d92486d5af3ed7))
* **ci:** 🛠  ensure git push and tag from standard-version in beta workflow ([5794bbb](https://github.com/lgdevlop/zsh-ai-complete/commit/5794bbb5921809a1ccc6f848cafa1d98fc442886))
* **release:** 🏷  enable automatic tag creation in beta releases ([4b5a820](https://github.com/lgdevlop/zsh-ai-complete/commit/4b5a82079ce85dc875b57ea15bb7edbcf579d6b0))

### 1.0.1-beta.2 (2025-04-13)


### 🐛 Bug Fixes

* **release:** 🏷  enable automatic tag creation in beta releases ([4b5a820](https://github.com/lgdevlop/zsh-ai-complete/commit/4b5a82079ce85dc875b57ea15bb7edbcf579d6b0))

### 1.0.1-beta.1 (2025-04-13)


### 🐛 Bug Fixes

* **ci:** 🛠  ensure git push and tag from standard-version in beta workflow ([5794bbb](https://github.com/lgdevlop/zsh-ai-complete/commit/5794bbb5921809a1ccc6f848cafa1d98fc442886))

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
