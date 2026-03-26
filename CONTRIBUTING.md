# Contributing to SmartThink

Thank you for your interest in contributing to SmartThink!

## How to Contribute

### Bug Reports

Open an [issue](https://github.com/bkan-hq/smartthink/issues) with:
- SmartThink mode used (Deep / Agent / Light)
- What you expected vs what happened
- Claude Code version (`claude --version`)

### Feature Requests

Open an issue with the `enhancement` label. Describe:
- The problem you're trying to solve
- Your proposed solution
- Which thinking module it relates to (if any)

### Pull Requests

1. Fork the repo and create a branch from `main`
2. Make your changes
3. Ensure both `README.md` and `README.ko.md` are updated if user-facing text changes
4. Submit a PR

#### What to contribute

- New thinking modules or mental models (add to `skill/references/`)
- Improvements to analysis methodology (`skill/references/analysis-method.md`)
- Bug fixes in skill routing or mode handling (`skill/SKILL.md`)
- Documentation improvements

#### What NOT to change

- `skill/.data/` — user-specific runtime data
- Evolution state format — changing the slot format breaks semantic merge across sessions

### Development Setup

```bash
git clone https://github.com/bkan-hq/smartthink.git
cd smartthink
./install.sh
```

Test your changes by running `/smartthink light <topic>` in a new Claude Code session (fastest feedback loop).

## Code of Conduct

Be respectful and constructive. We follow the [Contributor Covenant](https://www.contributor-covenant.org/version/2/1/code_of_conduct/).

## License

By contributing, you agree that your contributions will be licensed under the MIT License.
