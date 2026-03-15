# SmartThink

**천재적 사고 엔진 시스템** — A genius-level thinking engine for [Claude Code](https://docs.anthropic.com/en/docs/claude-code).

SmartThink combines 9 thinking frameworks (81 mental models, TRIZ innovation principles, antifragile strategy, and more) with Cynefin-based situation diagnosis to deliver deep, creative analysis on any topic.

---

## Quick Start

### 1. Install

```bash
git clone https://github.com/bkan-hq/smartthink.git
cd smartthink
chmod +x install.sh uninstall.sh
./install.sh
```

### 2. Open a new Claude Code session

```bash
claude
```

> **Important**: Start a **new** session after installation. Existing sessions won't recognize the skill.

### 3. Try it

```
/smartthink 1인 기업의 확장 전략
```

That's it! SmartThink will diagnose your topic, select the best thinking frameworks, and produce a full analysis with 10+ actionable ideas.

---

## Three Modes

### Deep Analysis (default)

Full analysis with 9 reference modules. Produces 10+ ideas with feasibility, impact, and risk assessment.

```
/smartthink AI 스타트업에서 네트워크 효과를 만드는 방법
```

**What you get:**
- Cynefin domain diagnosis (Clear / Complicated / Complex / Chaotic)
- Multi-layer analysis from 3+ perspectives
- 10+ genius ideas with engine/model used, feasibility, expected impact
- Top 3 with unicorn potential assessment and execution roadmap
- Actionable next steps
- Brief export (if the topic has implementable tasks)

### Light Analysis

Quick analysis without loading reference modules. Uses ~5% of context.

```
/smartthink light 사이드 프로젝트 아이디어
```

**When to use:** Quick brainstorming, simple questions, or when you want to save context for other work.

### Search-Enhanced Analysis

Deep analysis + real-time web search for data-backed insights.

```
/smartthink search 2026년 SaaS 시장 트렌드
```

**When to use:** Topics that need current market data, competitor analysis, or trend validation.

---

## What Happens Behind the Scenes

```
You type: /smartthink 주제
         ↓
    ┌─────────────────────────┐
    │  Main Agent (~300 tok)  │
    │  1. Cynefin 진단         │
    │  2. 모듈 선택            │
    │  3. 서브에이전트 스폰      │
    └──────────┬──────────────┘
               ↓
    ┌─────────────────────────┐
    │  Sub-agent (full analysis)│
    │  - 선택된 모듈 로딩       │
    │  - 다층 분석 (3+ 관점)    │
    │  - 10+ 아이디어 생성      │
    │  - Top 3 유니콘 평가      │
    │  - Brief 내보내기         │
    │  - 진화 상태 업데이트      │
    └─────────────────────────┘
```

Main agent does only diagnosis + routing (~300 tokens), then delegates the full analysis to a sub-agent. This saves **95% of your main context window**.

---

## Evolution System

SmartThink learns from each session and gets smarter over time.

**How it works:**
- After each analysis, SmartThink records what worked and what was lacking
- Effective thinking patterns are saved as **insights** (up to 10 slots)
- Blind spots are tracked as **gaps** (up to 5 slots)
- Module diversity is monitored — if you over-rely on one framework, SmartThink nudges you toward others

**Example after 3 sessions:**
```
## 핵심 인사이트 (3/10)
- **AI 레버리지 = 스케일 상한선 제거**: AI가 1인 기업의 매출 상한을 해방
  적용 맥락: 1인 사업에서 팀 규모 제약 극복 시
  근거: 전기가 공장 규모를 해방시킨 것과 동일 구조

## 다양성 H=2.13(>=1.8). 원천: 핵심엔진3, 현실왜곡1, 패턴합성1
```

Your evolution data is stored in `skill/.data/evolution-state.md`. To preserve across machines:

```bash
cd smartthink
git add skill/.data/evolution-state.md
git commit -m "update insights"
```

---

## Brief Export

When your topic has **implementable tasks** (code, system setup, etc.), SmartThink automatically generates a compressed brief:

```
skill/.data/briefs/
  └── 2026-03/
      └── 141530-seo-blog-automation/
          └── brief.md          ← Top 3 ideas + execution plan
```

Briefs are gitignored by default (they contain session-specific analysis).

---

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

SmartThink automatically selects 2-3 modules based on your topic type (idea discovery, strategy, problem solving, etc.).

---

## Requirements

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) CLI installed and configured
- macOS or Linux (Windows: use [WSL2](https://learn.microsoft.com/en-us/windows/wsl/))

## Uninstallation

```bash
cd smartthink
./uninstall.sh
```

Your evolution state and briefs remain in the repo. To fully remove, delete the cloned directory.

## License

MIT
