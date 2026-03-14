# SmartThink

**천재적 사고 엔진 시스템** — A genius-level thinking engine for [Claude Code](https://docs.anthropic.com/en/docs/claude-code).

SmartThink combines 9 thinking frameworks (81 mental models, TRIZ innovation principles, antifragile strategy, and more) with Cynefin-based situation diagnosis to deliver deep, creative analysis on any topic.

## Features

- **Cynefin Diagnosis** — Automatically classifies your problem domain (Clear/Complicated/Complex/Chaotic) and routes to the optimal thinking approach
- **9 Reference Modules** — Core Engines (12 engines), Unicorn Playbook, Reality Distortion, Cognitive Arsenal (81 mental models), Pattern Synthesis, Execution Velocity, Antifragile Strategy, TRIZ Innovation, Meta-Cognition
- **3 Modes** — Deep (full analysis), Light (quick analysis), Search (deep + web search)
- **Sub-agent Architecture** — Offloads full analysis to a sub-agent, saving 95% of main context
- **Evolution System** — Learns from each session; insights accumulate, gaps are tracked, module selection improves over time
- **Brief Export** — Generates actionable briefs for implementable topics

## Requirements

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) CLI installed and configured
- macOS or Linux (Windows users: use [WSL2](https://learn.microsoft.com/en-us/windows/wsl/))

## Installation

```bash
git clone https://github.com/bkan-hq/smartthink.git
cd smartthink
chmod +x install.sh uninstall.sh
./install.sh
```

This creates a symlink: `~/.claude/skills/smartthink` → the repo's `skill/` directory.

Your evolution state and briefs are stored in `skill/.data/` within the cloned repo.

## Usage

In any Claude Code session:

### Deep Analysis (default)
```
/smartthink AI 스타트업에서 네트워크 효과를 만드는 방법
```
Full analysis using selected thinking modules. Produces 10+ ideas with feasibility assessment.

### Light Analysis
```
/smartthink light 1인 기업의 확장 전략
```
Quick analysis using First Principles + Cynefin routing + past insights. No module loading. ~5% context usage.

### Search-Enhanced Analysis
```
/smartthink search 2026년 SaaS 시장 트렌드
```
Deep analysis + web search data for reality validation.

## How It Works

1. **Path Resolution** — Dynamically resolves file paths based on installation location
2. **Cynefin Diagnosis** — Classifies the problem domain
3. **Module Selection** — Picks 2-3 optimal thinking modules based on topic type
4. **Sub-agent Spawn** — Delegates full analysis to a dedicated sub-agent with selected modules
5. **Multi-Layer Analysis** — Cross-applies frameworks from 3+ perspectives
6. **Idea Generation** — 10+ ideas with engines used, feasibility, impact, and risk
7. **Synthesis** — Top 3 with unicorn potential, execution roadmap, killer assumptions
8. **Metacognition** — Records what worked, what was lacking, updates evolution state

## Evolution System

SmartThink learns from each session and gets smarter over time:
- Effective thinking patterns are remembered (up to 10 insights)
- Blind spots are tracked and compensated in future sessions
- Module variety is monitored to prevent over-reliance on any single framework

Data is stored in `skill/.data/evolution-state.md`. To preserve your insights across machines, commit periodically:
```bash
cd smartthink && git add skill/.data/evolution-state.md && git commit -m "update insights"
```

## Thinking Modules

| Module | Key Frameworks |
|--------|---------------|
| Core Engines | First Principles, Asymmetric Opportunity, Network Effects, Market Creation, Moat Building, Contrarian Validation, Value Capture, Timing Intelligence, Compound Advantage, Ecosystem Design, Inversion, Lollapalooza Detection |
| Unicorn Playbook | $0-to-$1B business building (6 phases) |
| Reality Distortion | Constraint Inversion, Category Creation, Temporal Arbitrage |
| Cognitive Arsenal | 81 mental models across 9 disciplines |
| Pattern Synthesis | Cross-domain pattern recognition, Weak signal detection |
| Execution Velocity | OODA Loop, Decision frameworks, Blitzscaling |
| Antifragile Strategy | Barbell Strategy, Optionality, Black Swan positioning |
| TRIZ Innovation | 40 Inventive Principles, Contradiction resolution |
| Meta-Cognition | Recursive self-improvement, Wardley Mapping, Lollapalooza |

## Uninstallation

```bash
cd smartthink
./uninstall.sh
```

Your evolution state and briefs remain in the repo. To fully remove, delete the cloned repo.

## License

MIT
