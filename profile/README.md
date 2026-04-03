<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/AethelredFoundation/.github/main/profile/banner-dark.svg">
    <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/AethelredFoundation/.github/main/profile/banner-light.svg">
    <img alt="Aethelred" src="https://raw.githubusercontent.com/AethelredFoundation/.github/main/profile/banner-dark.svg" width="900">
  </picture>
</p>

<p align="center">
  <a href="https://www.aethelred.org"><img src="https://img.shields.io/badge/Website-aethelred.org-111827?style=flat-square" alt="Website" /></a>
  <a href="https://www.aethelred.io"><img src="https://img.shields.io/badge/Protocol-aethelred.io-F97316?style=flat-square" alt="Protocol" /></a>
  <a href="https://docs.aethelred.io"><img src="https://img.shields.io/badge/Docs-docs.aethelred.io-FF6B35?style=flat-square&logo=gitbook&logoColor=white" alt="Documentation" /></a>
  <a href="https://discord.gg/aethelred"><img src="https://img.shields.io/badge/Discord-Community-5865F2?style=flat-square&logo=discord&logoColor=white" alt="Discord" /></a>
  <a href="https://github.com/aethelred-foundation/aethelred/blob/main/docs/WHITEPAPER.md"><img src="https://img.shields.io/badge/Whitepaper-public%20draft-0F766E?style=flat-square" alt="Whitepaper" /></a>
  <a href="https://github.com/aethelred-foundation/aethelred/blob/main/docs/TOKENOMICS.md"><img src="https://img.shields.io/badge/Tokenomics-public%20draft-14532D?style=flat-square" alt="Tokenomics" /></a>
  <a href="https://github.com/aethelred-foundation/aethelred/blob/main/docs/audits/STATUS.md"><img src="https://img.shields.io/badge/Security-audit%20scopes%20in%20progress-F59E0B?style=flat-square&logo=shield&logoColor=white" alt="Security Status" /></a>
</p>

<p align="center">
  <a href="https://github.com/aethelred-foundation/aethelred/actions/workflows/ci.yml"><img src="https://img.shields.io/github/actions/workflow/status/aethelred-foundation/aethelred/ci.yml?branch=main&style=flat-square&label=Protocol+CI" alt="Protocol CI" /></a>
  <a href="https://github.com/aethelred-foundation/aethelred/actions/workflows/security-scans.yml"><img src="https://img.shields.io/github/actions/workflow/status/aethelred-foundation/aethelred/security-scans.yml?branch=main&style=flat-square&label=Security+Scans" alt="Security Scans" /></a>
  <a href="https://github.com/aethelred-foundation/aethelred/actions/workflows/contracts-ci.yml"><img src="https://img.shields.io/github/actions/workflow/status/aethelred-foundation/aethelred/contracts-ci.yml?branch=main&style=flat-square&label=Contracts+CI" alt="Contracts CI" /></a>
  <a href="https://github.com/aethelred-foundation/aethelred/actions/workflows/rust-crates-ci.yml"><img src="https://img.shields.io/github/actions/workflow/status/aethelred-foundation/aethelred/rust-crates-ci.yml?branch=main&style=flat-square&label=Rust+CI" alt="Rust CI" /></a>
  <img src="https://img.shields.io/badge/Status-testnet--v1.0-CA8A04?style=flat-square" alt="Status: Testnet v1.0" />
  <img src="https://img.shields.io/badge/Go-1.24-00ADD8?style=flat-square&logo=go&logoColor=white" alt="Go" />
  <img src="https://img.shields.io/badge/Rust-1.85-DEA584?style=flat-square&logo=rust&logoColor=white" alt="Rust" />
  <img src="https://img.shields.io/badge/Cosmos_SDK-v0.50-2E3148?style=flat-square" alt="Cosmos SDK" />
  <img src="https://img.shields.io/badge/CometBFT-v0.38-2563EB?style=flat-square" alt="CometBFT" />
  <img src="https://img.shields.io/badge/PQC-ML--KEM--768+ML--DSA--65-7C3AED?style=flat-square" alt="PQC" />
</p>

<br>

<p align="center">
  <b>Aethelred is a sovereign Layer 1 for regulated and high-assurance AI workloads.</b><br>
  It combines deterministic settlement, Proof-of-Useful-Work, confidential execution, zkML verification,<br>
  and Digital Seals so enterprises, operators, and auditors can verify what ran, where it ran, and how it was anchored on-chain.
</p>

<br>

---

### Protocol Snapshot

| Parameter | Current Public Posture |
|:---|:---|
| **Native token** | `AETHEL` |
| **Total supply** | `10,000,000,000 AETHEL` fixed at genesis |
| **Post-genesis inflation** | `0%` |
| **Core token utility** | Staking, protocol fees, slashing collateral, governance, verified-compute settlement |
| **Evidence artifact** | Digital Seals |
| **Verification model** | Governed hybrid path across confidential execution and proof verification |
| **Supported proof systems** | Groth16, PLONK, EZKL, Halo2, STARK |
| **Confidential-compute posture** | Intel SGX, AMD SEV-SNP, AWS Nitro, Azure Confidential VMs, Google Confidential VMs, NVIDIA confidential-computing paths |
| **Disclosure rule** | Launch, float, valuation, fundraising, and counterparty claims publish only after canonical approval |
| **Performance rule** | Public performance claims publish only from verified benchmark packs |

---

### How It Works

```
AI Job Submitted -> VRF Scheduler -> Validator TEE Execution
                  -> zkML / verification artifacts produced
                  -> 2/3 consensus via ABCI++ vote extensions
                  -> Digital Seal minted and settled on-chain
```

Aethelred turns execution trust into protocol-verifiable evidence. Instead of asking users to trust screenshots, logs, or vendor narratives, the protocol binds execution evidence, verification evidence, and settlement context into portable Digital Seals.

---

### Why Aethelred

<table>
<tr>
<td width="50%" valign="top">

<h4>Proof-of-Useful-Work</h4>

Validator work is tied to useful AI-related execution and verification flows rather than empty hash puzzles. The protocol is designed around verifiable compute and auditable settlement, not generic throughput marketing.

</td>
<td width="50%" valign="top">

<h4>Digital Seals</h4>

Digital Seals bind workload identity, evidence, measurements, outputs, and settlement context into a portable artifact that enterprise, audit, and interoperability workflows can independently verify.

</td>
</tr>
<tr>
<td width="50%" valign="top">

<h4>Governed Disclosure</h4>

Architecture, fixed supply, zero inflation, and operator surfaces are public. Launch float, pricing, valuation, fundraising, and named commercial counterparties stay withheld until approved through canonical disclosure flows.

</td>
<td width="50%" valign="top">

<h4>Hybrid Verification</h4>

The public trust posture centers on confidential execution plus independently checkable verification. High-assurance paths fail closed rather than silently degrading to simulation.

</td>
</tr>
</table>

---

### Architecture

```
┌─────────────────────────────────────────────────────────────────────────┐
│                         Applications & SDKs                             │
│              TypeScript · Python · Go · Rust · CLI · APIs               │
├─────────────────────────────────────────────────────────────────────────┤
│                          REST / gRPC / WebSocket                        │
├───────────────────┬───────────────────┬─────────────────────────────────┤
│     x/pouw        │     x/seal        │           x/verify              │
│  PoUW scheduling  │  Digital Seals    │    TEE + zkML verification      │
│  Jobs + rewards   │  Evidence layer   │    Proof orchestration          │
│  VRF election     │  Audit trail      │    Circuit breakers             │
├───────────────────┴───────────────────┴─────────────────────────────────┤
│              Cosmos SDK v0.50 + CometBFT (ABCI++ vote extensions)       │
├──────────┬────────────────┬──────────────┬──────────────────────────────┤
│  WASM VM │  PQC Engine    │  Bridge      │  Encrypted mempool           │
│ (Wasmer) │ (ML-DSA /      │ (IBC + EVM   │ (anti-frontrunning,          │
│          │  ML-KEM)       │  relay)      │  threshold encryption)       │
└─────────────────────────────────────────────────────────────────────────┘
```

---

### Public Parameters

#### Network and Verification

| Parameter | Current Public Posture |
|:---|:---|
| **Settlement engine** | Cosmos SDK `v0.50` + CometBFT `v0.38` with ABCI++ vote extensions |
| **Consensus model** | Proof-of-Useful-Work with governed verification paths |
| **Execution posture** | Approved confidential-compute backends plus proof verification |
| **Evidence portability** | Digital Seals carry reusable execution and verification context |
| **Workload scheduling** | Lane-based workload separation is architectural; not a throughput claim |
| **Interoperability** | IBC support plus EVM bridge surfaces |
| **Public throughput / latency metrics** | Benchmark-gated and published only through verified claims packs |

#### Token and Economics

| Parameter | Current Public Posture |
|:---|:---|
| **Ticker** | `AETHEL` |
| **Total supply** | `10,000,000,000` fixed at genesis |
| **Inflation** | `0%` post-genesis |
| **Denomination model** | `uaethel` with 6 decimals on Cosmos L1; 18-decimal representation in EVM and Rust environments |
| **Utility roles** | Staking, validator participation, fees, slashing collateral, governance, settlement support |
| **Burn posture** | Supply can remain flat or decrease through burn mechanics; it does not inflate beyond the hard cap under the current public model |
| **Allocation buckets** | Governed and published only through approved canonical token materials |
| **Launch float / pricing / valuation / fundraising** | Withheld pending canonical token source pack approval |
| **Exchange / market-maker / liquidity counterparties** | Named publicly only after executed status and disclosure approval |

#### Security and Delivery

| Parameter | Current Public Posture |
|:---|:---|
| **Internal security review** | `27` findings remediated and verified |
| **Internal full audit v2** | `36` findings closed |
| **External audit scopes** | In progress |
| **Testnet posture** | Operational readiness program backed by release bundles, runbooks, CI evidence, and local / hosted rehearsals |
| **Operator guidance** | See runbooks and hardware docs in the core monorepo |
| **Mainnet gate** | Blocked until required signed external scopes complete |

---

### Core Repositories

| Repo | Description |
|:---|:---|
| [aethelred](https://github.com/aethelred-foundation/aethelred) | Canonical monorepo for the protocol, security baselines, and release provenance |
| [AIPs](https://github.com/aethelred-foundation/AIPs) | Aethelred Improvement Proposals |
| [terraqura](https://github.com/aethelred-foundation/terraqura) | Carbon-credit workflow application |

---

### Flagship Surfaces

| Surface | Description |
|:---|:---|
| [aethelred.org](https://www.aethelred.org) | Corporate, governance, and disclosure surface |
| [aethelred.io](https://www.aethelred.io) | Protocol, builders, and developer-facing surface |
| [Whitepaper](https://github.com/aethelred-foundation/aethelred/blob/main/docs/WHITEPAPER.md) | Current public canonical draft |
| [Tokenomics](https://github.com/aethelred-foundation/aethelred/blob/main/docs/TOKENOMICS.md) | Current public canonical draft |
| [Audit Status](https://github.com/aethelred-foundation/aethelred/blob/main/docs/audits/STATUS.md) | Security and audit tracking |

---

### Operator and Launch Guidance

- [Testnet Validator Runbook](https://github.com/aethelred-foundation/aethelred/blob/main/docs/TESTNET_VALIDATOR_RUNBOOK.md)
- [Mainnet Validator Runbook](https://github.com/aethelred-foundation/aethelred/blob/main/docs/VALIDATOR_RUNBOOK.md)
- [Hardware Requirements](https://github.com/aethelred-foundation/aethelred/blob/main/docs/validator/HARDWARE_REQUIREMENTS.md)
- [Protocol Overview](https://github.com/aethelred-foundation/aethelred/blob/main/docs/protocol/overview.md)
- [Security Policy](https://github.com/aethelred-foundation/aethelred/blob/main/SECURITY.md)

---

<p align="center">
  <sub>Public-facing metrics on this overview page are intentionally limited to values and claims supported by the current whitepaper, tokenomics, and approved website posture.</sub>
</p>
