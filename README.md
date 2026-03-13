# SmartThink

**천재적 사고 엔진 시스템** — A genius-level thinking engine for [Claude Code](https://docs.anthropic.com/en/docs/claude-code).

SmartThink combines 9 thinking frameworks (52+ mental models, TRIZ innovation principles, antifragile strategy, and more) with Cynefin-based situation diagnosis to deliver deep, creative analysis on any topic.

## Features

- **Cynefin Diagnosis** — Automatically classifies your problem domain (Clear/Complicated/Complex/Chaotic) and routes to the optimal thinking approach
- **9 Reference Modules** — Core Engines (10 engines), Unicorn Playbook, Reality Distortion, Cognitive Arsenal (52 mental models), Pattern Synthesis, Execution Velocity, Antifragile Strategy, TRIZ Innovation, Meta-Cognition
- **3 Modes** — Deep (full analysis), Light (quick analysis), Search (deep + web search)
- **Sub-agent Architecture** — Offloads full analysis to a sub-agent, saving 95% of main context
- **Evolution System** — Learns from each session; insights accumulate, gaps are tracked, module selection improves over time
- **Brief Export** — Generates actionable briefs for implementable topics

## Requirements

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) CLI installed and configured

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
Quick analysis using First Principles only. No module loading. ~5% context usage.

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

SmartThink improves over time. After each Deep analysis session:
- Effective module combinations are recorded as insights (max 10 slots)
- Gaps in thinking are tracked (max 5 slots)
- Module diversity is monitored via Shannon entropy (H score)
- When a gap occurs 3+ times, specific evolution actions are generated

Data is stored in `skill/.data/evolution-state.md`.

## Thinking Modules

| Module | Key Frameworks |
|--------|---------------|
| Core Engines | First Principles, Asymmetric Opportunity, Network Effects, Market Creation, Moat Building, Contrarian Validation, Value Capture, Timing Intelligence, Compound Advantage, Ecosystem Design |
| Unicorn Playbook | $0-to-$1B business building (6 phases) |
| Reality Distortion | Constraint Inversion, Category Creation, Temporal Arbitrage |
| Cognitive Arsenal | 52 mental models across 6 disciplines |
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
