<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/aethelred-foundation/.github/main/profile/banner-dark.svg">
    <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/aethelred-foundation/.github/main/profile/banner-light.svg">
    <img alt="Aethelred" src="https://raw.githubusercontent.com/aethelred-foundation/.github/main/profile/banner-dark.svg" width="900">
  </picture>
</p>

<p align="center">
  <a href="https://www.aethelred.org"><img src="https://img.shields.io/badge/Website-aethelred.org-111827?style=flat-square" alt="Website" /></a>
  <a href="https://www.aethelred.io"><img src="https://img.shields.io/badge/Protocol-aethelred.io-F97316?style=flat-square" alt="Protocol" /></a>
  <a href="https://docs.aethelred.io"><img src="https://img.shields.io/badge/Docs-docs.aethelred.io-FF6B35?style=flat-square&logo=gitbook&logoColor=white" alt="Documentation" /></a>
  <a href="https://discord.gg/aethelred"><img src="https://img.shields.io/badge/Discord-Community-5865F2?style=flat-square&logo=discord&logoColor=white" alt="Discord" /></a>
  <a href="https://github.com/aethelred-foundation/AIPs"><img src="https://img.shields.io/badge/AIPs-proposals-7C3AED?style=flat-square" alt="AIPs" /></a>
  <a href="https://github.com/aethelred-foundation/aethelred/blob/main/LICENSE"><img src="https://img.shields.io/badge/License-Apache_2.0-2563EB?style=flat-square" alt="License" /></a>
</p>

<p align="center">
  <a href="https://github.com/aethelred-foundation/aethelred/blob/main/docs/WHITEPAPER.md"><img src="https://img.shields.io/badge/Whitepaper-public%20draft-0F766E?style=flat-square" alt="Whitepaper" /></a>
  <a href="https://github.com/aethelred-foundation/aethelred/blob/main/docs/TOKENOMICS.md"><img src="https://img.shields.io/badge/Tokenomics-public%20draft-14532D?style=flat-square" alt="Tokenomics" /></a>
  <a href="https://github.com/aethelred-foundation/aethelred/blob/main/docs/audits/STATUS.md"><img src="https://img.shields.io/badge/Security-audit%20scopes%20in%20progress-F59E0B?style=flat-square&logo=shield&logoColor=white" alt="Security Status" /></a>
  <img src="https://img.shields.io/badge/Go-1.24-00ADD8?style=flat-square&logo=go&logoColor=white" alt="Go" />
  <img src="https://img.shields.io/badge/Rust-1.85-DEA584?style=flat-square&logo=rust&logoColor=white" alt="Rust" />
  <img src="https://img.shields.io/badge/Solidity-0.8.20-363636?style=flat-square&logo=solidity&logoColor=white" alt="Solidity" />
  <img src="https://img.shields.io/badge/Cosmos_SDK-v0.50-2E3148?style=flat-square" alt="Cosmos SDK" />
  <img src="https://img.shields.io/badge/CometBFT-v0.38-2563EB?style=flat-square" alt="CometBFT" />
  <img src="https://img.shields.io/badge/PQC-ML--KEM--768+ML--DSA--65-7C3AED?style=flat-square" alt="PQC" />
</p>

<p align="center">
  <a href="https://github.com/aethelred-foundation/aethelred/actions/workflows/ci.yml"><img src="https://img.shields.io/github/actions/workflow/status/aethelred-foundation/aethelred/ci.yml?branch=main&style=flat-square&label=Protocol+CI" alt="Protocol CI" /></a>
  <a href="https://github.com/aethelred-foundation/aethelred/actions/workflows/security-scans.yml"><img src="https://img.shields.io/github/actions/workflow/status/aethelred-foundation/aethelred/security-scans.yml?branch=main&style=flat-square&label=Security+Scans" alt="Security Scans" /></a>
  <a href="https://github.com/aethelred-foundation/aethelred/actions/workflows/contracts-ci.yml"><img src="https://img.shields.io/github/actions/workflow/status/aethelred-foundation/aethelred/contracts-ci.yml?branch=main&style=flat-square&label=Contracts+CI" alt="Contracts CI" /></a>
  <a href="https://github.com/aethelred-foundation/aethelred/actions/workflows/rust-crates-ci.yml"><img src="https://img.shields.io/github/actions/workflow/status/aethelred-foundation/aethelred/rust-crates-ci.yml?branch=main&style=flat-square&label=Rust+CI" alt="Rust CI" /></a>
  <img src="https://img.shields.io/badge/Status-testnet--v1.0-CA8A04?style=flat-square" alt="Status: Testnet v1.0" />
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
| **Settlement engine** | Cosmos SDK `v0.50` + CometBFT `v0.38` with ABCI++ vote extensions |
| **Consensus model** | Proof-of-Useful-Work with governed verification paths |
| **Evidence artifact** | Digital Seals |
| **Core token utility** | Staking, protocol fees, slashing collateral, governance, verified-compute settlement |
| **Verification model** | Governed hybrid path across confidential execution and proof verification |
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
│     TypeScript · Python · Go · Rust · CLI · APIs · Verifier apps        │
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

| Parameter | Current Public Posture | Notes |
|:---|:---|:---|
| **Settlement engine** | Cosmos SDK `v0.50` + CometBFT `v0.38` | ABCI++ vote extensions are part of the public architecture |
| **Consensus design** | Proof-of-Useful-Work | Public design links verified AI computation with settlement |
| **Scheduler** | VRF-based assignment | Publicly described as verifiable random job routing |
| **Vote path** | ABCI++ vote extensions | Public architecture surface |
| **Seal settlement** | `2/3` BFT agreement path | Public README describes 2/3 consensus before seal minting |
| **Evidence portability** | Digital Seals | Portable evidence object for enterprise, audit, and interoperability workflows |
| **Encrypted mempool** | Present | Anti-frontrunning / threshold-encryption posture is public |
| **Vector data plane** | Verified Vector Vault data plane | Public whitepaper description for vector architecture |
| **Interoperability** | IBC + EVM bridge surfaces | Publicly documented bridge and relay posture |

#### Performance and Benchmark Parameters

| Parameter | Current Public Posture | Notes |
|:---|:---|:---|
| **Block time** | Benchmark-gated | Internal targets exist, but public timing claims require verified benchmark packs |
| **Finality timing** | Benchmark-gated | Deterministic CometBFT finality is public; exact public numbers are withheld pending review |
| **Transfer throughput** | Benchmark-gated | Public docs intentionally withhold throughput claims until verification |
| **Compute throughput** | Benchmark-gated | Depends on workload mix, proof paths, and hardware profile |
| **Inference latency** | Benchmark-gated | Public claims require reviewed benchmark evidence |
| **TEE attestation latency** | Benchmark-gated | Latency claims are not public facts until verified |
| **ZK proof latency** | Benchmark-gated | Proof-speed claims remain gated pending benchmark review |
| **Concurrent jobs per prover** | Governed | Capacity depends on operator class and benchmark validation |
| **Max jobs per block** | Governed | Release-config and governance controlled, not asserted as a fixed public metric here |

#### Token and Economics

| Parameter | Current Public Posture | Notes |
|:---|:---|:---|
| **Ticker** | `AETHEL` | Public |
| **Total supply** | `10,000,000,000` fixed at genesis | Public |
| **Inflation** | `0%` post-genesis | Public |
| **Genesis mint model** | Fixed supply minted at genesis | Public |
| **Denomination model** | `uaethel` with 6 decimals on Cosmos L1; 18-decimal representation in EVM and Rust environments | Public technical denomination model |
| **Utility roles** | Staking, validator participation, fees, slashing collateral, governance, settlement support | Public |
| **Burn posture** | Qualitatively public | Fees can be partially burned; exact public curve is not published |
| **Supply expansion boundary** | Hard-cap protected | Public docs state supply cannot exceed the cap without code and governance change |
| **Treasury / ecosystem coordination** | Governed | Publicly acknowledged as controlled under governance |

#### Allocation and Release Parameters

| Parameter Family | Current Public Posture | Notes |
|:---|:---|:---|
| **Compute / PoUW rewards** | Public category, exact sizing withheld | Release metrics publish only through the canonical token source pack |
| **Ecosystem / builder programs** | Public category, exact sizing withheld | Program existence is public; exact amounts remain disclosure-gated |
| **Contributor / team releases** | Governed | Exact unlock schedules are not public facts on the org overview |
| **Investor / financing buckets** | Withheld pending canonical release | Pricing, round structure, and fundraising metrics are not public protocol facts |
| **Public launch float** | Withheld pending canonical release | Launch float and circulating baseline publish only after approval |
| **Price / valuation / FDV** | Withheld pending canonical release | Not treated as protocol facts on the org overview |
| **Counterparty names** | Executed-only disclosure | Exchanges, market makers, and similar counterparties are named only after executed status and approval |
| **Performance-linked commercial claims** | Benchmark-gated | Verified benchmark packs are required before publication |

#### Consensus and Validator Parameters

| Parameter | Current Public Posture | Notes |
|:---|:---|:---|
| **Leader selection** | VRF-based | Publicly described in the protocol architecture |
| **Stake / compute weighting** | Governed | Public docs describe PoUW and VRF, but do not lock a public weighting table on the org overview |
| **Active validator set (testnet)** | `50` | Current testnet runbook parameter |
| **Active validator set (mainnet)** | Governed | Final production sizing is release-controlled |
| **Min stake (testnet)** | `1,000 tAETHEL` | Current testnet runbook parameter |
| **Min stake (mainnet)** | `100,000 AETHEL` | Current mainnet runbook parameter |
| **Unbonding (testnet / mainnet)** | `1 day` / `21 days` | Current runbook parameters |
| **Uptime requirement (testnet / mainnet)** | `80%` / `95%` | Current runbook parameters |
| **Double-sign slash** | `50%` | Publicly documented in runbooks |
| **Simulated proofs** | Allowed on testnet / forbidden on mainnet | Current runbook posture |
| **Compliance plane** | Disabled on testnet / enabled on mainnet | Current runbook posture |

#### Node Classes and Operator Surfaces

| Node Class | Current Public Posture | Notes |
|:---|:---|:---|
| **Standard Validator** | Public operator class | Consensus, block proposal, and light verification |
| **Compute Prover** | Public operator class | AI inference, proof generation, and heavy confidential-compute workloads |
| **Sentry / failover surfaces** | Required for mainnet ops posture | Detailed topology remains in runbooks, not in the org overview |
| **HSM posture** | Mainnet-required operator control | Explicitly part of current mainnet operations guidance |
| **Hardware truth source** | Runbooks + hardware docs | The org overview should summarize, while detailed SKUs live in operator docs |

#### Execution, Proof, and Integration Parameters

| Parameter | Current Public Posture | Notes |
|:---|:---|:---|
| **TEE backends** | Intel SGX, AMD SEV-SNP, AWS Nitro, Azure Confidential VMs, Google Confidential VMs, NVIDIA confidential-computing paths | Public |
| **Proof systems** | Groth16, PLONK, EZKL, Halo2, STARK | Public |
| **Post-quantum posture** | ML-DSA-65 + ML-KEM-768 default transport profile | Public |
| **SDK languages** | TypeScript, Python, Go, Rust | Public |
| **Integration surfaces** | PyTorch, TensorFlow / Keras, Hugging Face, LangChain, FastAPI, Next.js, Docker, Kubernetes Helm | Public website and SDK docs |
| **Model / proof compilation surface** | ONNX-to-EZKL path when enabled in registry workflow | Public proof-surface description |
| **API surfaces** | REST, gRPC, WebSocket, CLI | Public |

#### Bridge and Settlement Parameters

| Parameter | Current Public Posture | Notes |
|:---|:---|:---|
| **IBC surface** | Public | Core interoperability path |
| **Ethereum bridge** | Public | EVM bridge surface is part of the core monorepo |
| **Stablecoin routing posture** | Circle CCTP V2 plus TEE issuer mint for non-CCTP assets | Public site posture |
| **Liquidity model** | Zero-liquidity-pool institutional routing | Public materials explicitly avoid an AMM / LP custody bridge framing |
| **Issuer / settlement partner roster** | Not publicly listed | Current site posture withholds live issuer and custodian rosters |
| **Counterparty disclosure** | Executed-only | Public naming follows approval and executed status |

#### Security, Audit, and Delivery Parameters

| Parameter | Current Public Posture | Notes |
|:---|:---|:---|
| **Internal security review** | `27` findings remediated and verified | Public audit tracker |
| **Internal full audit v2** | `36` findings closed | Public audit tracker |
| **External consultant VRF review** | Completed | Critical RS-01 closed |
| **External audit scopes** | In progress | Consensus / vote extensions and Ethereum contracts scopes remain active |
| **Security scan posture** | Public CI gate | gosec, trivy, gitleaks, slither, govulncheck, cargo-audit, npm audit |
| **Testnet posture** | Operational readiness program | Whitepaper explicitly frames public testnet as readiness, not marketing |
| **Mainnet gate** | Blocked until required signed external scopes complete | Public audit tracker |

---

### Testnet vs Mainnet Operating Parameters

| Parameter | Testnet | Mainnet |
|:---|:---:|:---:|
| **Tokens have value** | No | Yes |
| **HSM required** | No | Yes |
| **Sentry nodes required** | No | Yes (2+) |
| **Failover node required** | No | Yes |
| **Min stake** | `1,000 tAETHEL` | `100,000 AETHEL` |
| **Unbonding** | `1 day` | `21 days` |
| **Uptime requirement** | `80%` | `95%` |
| **Simulated proofs** | Allowed | Forbidden |
| **Compliance plane** | Disabled | Enabled |

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
  <sub>This overview intentionally keeps full parameter coverage while separating confirmed public metrics from governed, benchmark-gated, and disclosure-gated categories so the org page stays detailed without drifting away from the current canonical docs.</sub>
</p>
