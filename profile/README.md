<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/AethelredFoundation/.github/main/profile/banner-dark.svg">
    <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/AethelredFoundation/.github/main/profile/banner-light.svg">
    <img alt="Aethelred" src="https://raw.githubusercontent.com/AethelredFoundation/.github/main/profile/banner-dark.svg" width="900">
  </picture>
</p>

<p align="center">
  <a href="https://docs.aethelred.io"><img src="https://img.shields.io/badge/Docs-aethelred.io-FF6B35?style=flat-square&logo=gitbook&logoColor=white" alt="Documentation" /></a>
  <a href="https://discord.gg/aethelred"><img src="https://img.shields.io/badge/Discord-Community-5865F2?style=flat-square&logo=discord&logoColor=white" alt="Discord" /></a>
  <a href="https://twitter.com/aethelred_io"><img src="https://img.shields.io/badge/Twitter-%40aethelred__io-1DA1F2?style=flat-square&logo=x&logoColor=white" alt="Twitter" /></a>
  <a href="https://github.com/AethelredFoundation/aethelred/blob/main/LICENSE"><img src="https://img.shields.io/badge/License-Apache_2.0-blue?style=flat-square" alt="License" /></a>
  <a href="https://go.dev"><img src="https://img.shields.io/badge/Go-1.24-00ADD8?style=flat-square&logo=go&logoColor=white" alt="Go" /></a>
  <a href="https://www.rust-lang.org"><img src="https://img.shields.io/badge/Rust-1.75+-DEA584?style=flat-square&logo=rust&logoColor=white" alt="Rust" /></a>
  <a href="https://github.com/AethelredFoundation/aethelred/blob/main/SECURITY.md"><img src="https://img.shields.io/badge/Security-Audit_Scheduled_(Q3_2026)-yellow?style=flat-square&logo=shield&logoColor=white" alt="Security Audit Scheduled" /></a>
</p>

<br>

<p align="center">
  <b>Aethelred is the first blockchain where validator work has real-world value.</b><br>
  Validators run AI inference inside hardware TEEs and generate on-chain zero-knowledge proofs,<br>
  creating a permanent, tamper-proof record of every AI computation.
</p>

<br>

---

### How It Works

```
   ┌──────────────┐     ┌───────────────────┐     ┌──────────────────┐
   │  AI Job       │────>│  Validator TEE     │────>│  zkML Proof      │
   │  Submitted    │     │  Executes Model    │     │  Generated       │
   └──────────────┘     └───────────────────┘     └────────┬─────────┘
                                                            │
                                                            v
   ┌──────────────┐     ┌───────────────────┐     ┌──────────────────┐
   │  Digital Seal │<────│  2/3 BFT           │<────│  Vote Extensions │
   │  Minted       │     │  Consensus         │     │  (ABCI++)        │
   └──────────────┘     └───────────────────┘     └──────────────────┘
```

Users submit AI inference jobs to the network. Validators execute them inside Trusted Execution Environments, generate zero-knowledge proofs of correct execution, and reach BFT consensus via ABCI++ vote extensions. The result is an immutable **Digital Seal**: a verifiable, on-chain attestation binding model, input, output, and proof into a single tamper-proof record.

---

### Why Aethelred

<table>
<tr>
<td width="50%" valign="top">

<h4>Proof-of-Useful-Work</h4>

Validators earn rewards by performing real AI inference, not wasting compute on empty puzzles. Every block producer contributes to a global verifiable compute marketplace. Stake-weighted voting (70%) combined with compute contribution scoring (30%) ensures that both capital and useful work are rewarded.

</td>
<td width="50%" valign="top">

<h4>Digital Seals</h4>

Immutable on-chain attestations linking AI model + input + output + cryptographic proof. Seals carry regulatory metadata (GDPR, HIPAA, OFAC), support revocation, and are independently verifiable by anyone, forever. Every seal forms a complete, auditable chain of custody.

</td>
</tr>
<tr>
<td width="50%" valign="top">

<h4>Post-Quantum from Genesis</h4>

Dual-key scheme combining Ed25519 with NIST-standard Dilithium3 (ML-DSA / FIPS 204) for signatures and Kyber768 (ML-KEM / FIPS 203) for key encapsulation. Aethelred is quantum-resistant by design, protecting against "harvest now, decrypt later" attacks from day one.

</td>
<td width="50%" valign="top">

<h4>Hybrid TEE + zkML Verification</h4>

Hardware execution in Intel SGX (DCAP), AWS Nitro Enclaves, or AMD SEV-SNP. Mathematical verification via EZKL, RISC Zero, Halo2, Groth16, or Plonky2. Trust hardware *and* math, not one or the other. Dual verification eliminates single points of failure.

</td>
</tr>
</table>

---

### Architecture

```
┌─────────────────────────────────────────────────────────────────────────┐
│                         Applications & SDKs                             │
│   TypeScript · Python · Go · Rust · CLI (aethel) · VS Code Extension   │
├─────────────────────────────────────────────────────────────────────────┤
│                          REST / gRPC / WebSocket                        │
├───────────────────┬───────────────────┬─────────────────────────────────┤
│     x/pouw        │     x/seal        │           x/verify              │
│  PoUW Consensus   │  Digital Seals    │    TEE + zkML Verification      │
│  Job Scheduling   │  Compliance Meta  │    Proof Orchestration          │
│  VRF Election     │  Audit Trail      │    Circuit Breaker              │
│  Reward Distrib.  │  Revocation       │    Multi-framework Support      │
├───────────────────┴───────────────────┴─────────────────────────────────┤
│              Cosmos SDK v0.50 + CometBFT (ABCI++ Vote Extensions)       │
├──────────┬────────────────┬──────────────┬──────────────────────────────┤
│  WASM VM │  PQC Engine    │  Bridge      │  Encrypted Mempool           │
│ (Wasmer) │ (Dilithium3 +  │ (EIP-712     │ (Threshold encryption,       │
│          │  Kyber768)     │  Relayer)    │  anti-frontrunning)          │
├──────────┴────────────────┴──────────────┴──────────────────────────────┤
│              IBC (Cosmos Ecosystem) + Ethereum Bridge (Lock & Mint)      │
└─────────────────────────────────────────────────────────────────────────┘
```

---

### Performance Benchmarks

| Metric | Value | Notes |
|:---|:---:|:---|
| **Block Time** | 2.8 - 6s | CometBFT with PoUW optimizations |
| **Finality** | Instant | Single-slot finality, max reorg depth of 6 blocks |
| **Transfer TPS** | 12,500 | Target: 10,000 |
| **Compute Job TPS** | 650 | Target: 500 |
| **Total Network Capacity** | 8,500+ TPS | Combined transfer + compute throughput |
| **AI Inference Latency** | 45ms | Llama-3 8B, batch size 1 (target < 100ms) |
| **TEE Attestation** | 2.3s | Hardware quote generation and verification |
| **ZK Proof Generation** | 18s | Optional secondary verification (target < 30s) |
| **Max Concurrent Jobs/Prover** | 10 | Per compute prover node |
| **Max Jobs per Block** | 1,000 | Configurable via governance |

#### Proof Verification Latency

| Proof System | P50 Latency | P95 | P99 | Setup |
|:---|:---:|:---:|:---:|:---|
| **Groth16** | 50ms | 100ms | 200ms | Trusted setup (circuit-specific) |
| **Plonk** | 75ms | 150ms | 250ms | Universal setup |
| **Halo2** | 100ms | 200ms | 350ms | No trusted setup |
| **EZKL** | 150ms | 250ms | 400ms | AI-optimized circuits |

#### TEE Attestation Verification

| Platform | Avg Latency | Max Latency | Attestation Method |
|:---|:---:|:---:|:---|
| **Intel SGX** | 30ms | 40ms | DCAP / EPID |
| **AMD SEV-SNP** | 25ms | 35ms | vTPM |
| **AWS Nitro** | 20ms | 30ms | PCR-based (CBOR) |

---

### AETHEL Token

| Property | Value |
|:---|:---|
| **Name** | Aethelred |
| **Ticker** | AETHEL |
| **Decimals** | 18 (wei precision) |
| **Total Supply** | 10,000,000,000 (10 billion, hard-capped) |
| **Consensus Denomination** | uaethel (1 AETHEL = 10^18 uaethel) |
| **Cross-layer Scaling** | 10^12 factor between 18-decimal wei and 6-decimal native |

#### Token Allocation

| Category | Allocation | Vesting |
|:---|:---:|:---|
| **Compute / PoUW Rewards** | 40% (4B) | 10-year linear distribution |
| **Ecosystem Fund** | 20% (2B) | DAO-controlled, 2% max monthly unlock |
| **Early Investors** | 15% (1.5B) | 1-year cliff + 2-year linear |
| **Core Team** | 15% (1.5B) | 1-year cliff + 3-year linear |
| **Public Sale / TGE** | 5% (500M) | 100% unlocked at TGE |
| **Foundation Reserve** | 5% (500M) | Board-approval unlock |

#### Fee Distribution

| Recipient | Share |
|:---|:---:|
| Compute Prover (AI job executor) | 70% |
| Validator (block proposer) | 20% |
| Protocol Burn | 10% |

#### Adaptive Burn Mechanism

The burn rate scales quadratically with network utilization:

```
BurnRate = 5% + 15% × (BlockUsage / BlockCapacity)²
```

| Network Utilization | Effective Burn Rate |
|:---:|:---:|
| 10% | ~5.1% |
| 25% | ~6.0% |
| 50% | ~8.75% |
| 75% | ~13.4% |
| 90% | ~17.2% |
| 100% | 20.0% |

#### Emission Schedule

| Period | Emission | Cumulative |
|:---|:---:|:---|
| Year 0 - 4 | 100M AETHEL | 25% of mining pool |
| Year 4 - 8 | 50M AETHEL | First halving |
| Year 8 - 12 | 25M AETHEL | Second halving |
| Year 12+ | Continues halving | ~50 years to full distribution |

#### Staking Rewards

| Parameter | Value |
|:---|:---|
| Base APY | 8% - 15% |
| Compute Bonus Multiplier | 1.5x (for provers running inference) |
| Loyalty Bonus | Up to 10% additional (max after 365 days staked) |

---

### Consensus Parameters

| Parameter | Value | Description |
|:---|:---:|:---|
| **Weight: Stake** | 70% | Stake-weighted voting power |
| **Weight: Compute** | 30% | Compute contribution scoring |
| **Leader Selection** | Weighted VRF | Verifiable Random Function with stake weighting |
| **Randomness Beacon** | Every 100 blocks | Distributed randomness via drand |
| **Min Validators** | 21 | Minimum active validator set |
| **Max Validators** | 1,000 | Capacity for large validator sets |
| **Active Set Size** | 100 | Validators participating in consensus |
| **Epoch Length** | 43,200 blocks | ~3 days per epoch |
| **Max Reorg Depth** | 6 blocks | Instant finality with safety margin |

#### Supported Model Formats

| Format | Max Size | Notes |
|:---|:---:|:---|
| **ONNX** | 10.7 GB | Primary format |
| **PyTorch** | 10.7 GB | Native PyTorch models |
| **TensorFlow** | 10.7 GB | SavedModel format |
| **SafeTensors** | 10.7 GB | HuggingFace standard |

#### Job Parameters

| Parameter | Value |
|:---|:---|
| Min bid | 1 AETHEL |
| Default SLA timeout | 1 hour |
| Max SLA timeout | 24 hours |
| Late penalty | 1% per minute |
| Cancellation fee | 5% |
| Max priority multiplier | 5x |
| Max input size | 1 GB |

---

### Validator Network

#### Node Types

| Node Type | Role | Stake Required | Fee Share |
|:---|:---|:---:|:---:|
| **Validator** | Consensus, block proposal, light verification | 50,000 AETHEL | 20% |
| **Compute Prover** | AI inference, ZK proofs, TEE workloads | 5,000 AETHEL | 70% |
| **Sentry** | DDoS protection, RPC endpoints | None | N/A |
| **Archive** | Full historical state (10+ TB) | None | N/A |
| **Light** | Mobile / browser, header verification only | None | N/A |

#### Validator Hardware Requirements

| Component | Minimum | Recommended |
|:---|:---|:---|
| **CPU** | 16-core AMD EPYC 7000 / Intel Xeon 3rd Gen | 32-core AMD EPYC 9004 (Genoa) |
| **RAM** | 64 GB DDR4 ECC | 128 GB DDR5 ECC |
| **Storage** | 2 TB NVMe (100K IOPS) | 4 TB NVMe RAID 1 (500K+ IOPS) |
| **Network** | 1 Gbps symmetric | 10 Gbps SFP+ |

#### Compute Prover Hardware Requirements

| Component | Minimum | Recommended |
|:---|:---|:---|
| **CPU** | 32-core AMD EPYC 7763 | 64-core AMD EPYC 9654 |
| **RAM** | 256 GB DDR5 ECC | 512 GB DDR5 ECC |
| **GPU** | NVIDIA A100 (80 GB HBM2e) | NVIDIA H100 (80 GB HBM3) |
| **FPGA** | Optional | Xilinx Alveo U280 (8 GB HBM2, 460 GB/s) |
| **Storage** | 4 TB NVMe | 8 TB NVMe |
| **Network** | 10 Gbps | 25 Gbps |
| **TEE** | Intel SGX2 (Ice Lake+) **mandatory** | AMD SEV-SNP (EPYC 7003/9004) |

#### Staking Parameters

| Parameter | Validator | Compute Prover |
|:---|:---:|:---:|
| Min Stake | 50,000 AETHEL | 5,000 AETHEL |
| Max Stake | 5,000,000 AETHEL | 500,000 AETHEL |
| Unbonding Period | 21 days | 7 days |
| Commission Range | 0% - 20% | 0% - 20% |
| Max Commission Change | 1% / day | 1% / day |

---

### Slashing & Enforcement

#### Tier 1: Critical (Zero Tolerance)

| Offense | Penalty | Duration |
|:---|:---:|:---|
| Invalid ZK proof submission | 100% slash | Permanent tombstone |
| Forged TEE attestation | 100% slash | Permanent tombstone |
| Hardware identity spoofing | 100% slash | Permanent tombstone |
| Fabricated inference result | 100% slash | Permanent tombstone |
| Committee manipulation | 100% slash | Permanent tombstone |

#### Tier 2: Malicious Behavior

| Offense | Penalty | Duration |
|:---|:---:|:---|
| Double-signing | 50% slash | 30-day ban |
| Equivocation | 50% slash | 30-day ban |
| Vote tampering | 50% slash | 30-day ban |
| Validator collusion | 50% slash | 30-day ban |
| Result plagiarism | 50% slash | 30-day ban |

#### Tier 3: Performance Failures

| Offense | Penalty | Duration |
|:---|:---:|:---|
| SLA timeout | 5% slash | 24-hour suspension |
| Late delivery | 5% slash | 24-hour suspension |
| Incomplete result | 5% slash | 24-hour suspension |
| Attestation failure | 5% slash | 24-hour suspension |
| Low reliability (< 90%) | 5% slash | 24-hour suspension |

#### Challenge-Response System

| Parameter | Value |
|:---|:---|
| Committee size | 3 validators |
| Committee threshold | 67% agreement |
| Response window | 10 minutes |
| Challenger reward | 50% of slashed amount |
| Spam penalty | 20% of challenger's stake |
| Attestation sample rate | 5% per epoch |
| Min reliability score | 90% (rolling 100-job window) |

---

### Security & Cryptography

#### Signature Schemes

| Algorithm | Standard | Security Level | Usage |
|:---|:---|:---:|:---|
| **Dilithium3 (ML-DSA-65)** | FIPS 204 | NIST Level 3 | Post-quantum digital signatures |
| **Kyber768 (ML-KEM-768)** | FIPS 203 | NIST Level 3 | Post-quantum key encapsulation |
| **Ed25519** | RFC 8032 | 128-bit classical | Classical digital signatures |
| **ECDSA secp256k1** | FIPS 186-5 | 128-bit classical | Ethereum compatibility |

#### Hash Functions

| Algorithm | Standard | Output Size | Usage |
|:---|:---|:---:|:---|
| **BLAKE3** | N/A | 256-bit | General hashing, performance-critical paths |
| **SHA3-256** | FIPS 202 | 256-bit | Merkle trees, commitments |
| **Keccak256** | Ethereum | 256-bit | EVM compatibility, address derivation |
| **SHA-256** | FIPS 180-4 | 256-bit | VRF, HMAC, key derivation |

#### Encryption

| Algorithm | Standard | Usage |
|:---|:---|:---|
| **AES-256-GCM** | FIPS 197 | Data at rest |
| **ChaCha20-Poly1305** | RFC 8439 | Data in transit |
| **X25519** | RFC 7748 | Classical key exchange |
| **Pedersen Commitments** | Discrete-log | Zero-knowledge commitments |

#### Security Posture

- **27 audit findings** identified and remediated across core modules
- **Trail of Bits** security audit scheduled for July 2026
- Formal verification of core consensus invariants in progress
- Encrypted mempool with threshold encryption to prevent MEV and front-running
- Circuit breakers for anomaly detection and emergency halts
- Continuous fuzzing across consensus, VM, and bridge modules

Report vulnerabilities responsibly via our [Security Policy](https://github.com/AethelredFoundation/aethelred/blob/main/SECURITY.md).

---

### Compliance & Regulatory

#### Supported Jurisdictions

| Jurisdiction | Requirements | Data Handling |
|:---|:---|:---|
| **UAE** | ADGM / DIFC compliance | TEE mandatory, data residency enforced |
| **European Union** | GDPR | Right to erasure, data minimization, 365-day retention |
| **United Kingdom** | UK-GDPR | Post-Brexit data transfer rules |
| **United States** | CCPA, HIPAA, NY DFS | State-specific and sector-specific compliance |
| **Saudi Arabia** | PDPL | Data localization required |
| **Singapore** | PDPA, MAS guidelines | Financial data protection |
| **Global** | Minimal | Hardware verification only |

#### Data Classification

| Level | Encryption | Hardware | Audit | Retention |
|:---|:---|:---|:---|:---|
| **PUBLIC** | Optional | Generic | Optional | Standard |
| **INTERNAL** | At-rest | Generic | Required | Standard |
| **CONFIDENTIAL** | End-to-end | TEE preferred | Required | 7 years |
| **SENSITIVE** | E2E + post-quantum | TEE required | Immutable | Compliance-defined |
| **RESTRICTED** | Multi-party + PQ + MPC | Air-gapped TEE | Real-time | Indefinite |

#### Sanctions & AML

| Parameter | Value |
|:---|:---|
| Screening lists | OFAC SDN, OFAC Consolidated |
| List update frequency | Every 24 hours |
| KYC threshold | 10,000 AETHEL |
| Reporting threshold | 100,000 AETHEL |
| BAA required for | HIPAA-classified data |

---

### Governance

#### Proposal Types

| Type | Quorum | Threshold | Notes |
|:---|:---:|:---:|:---|
| **Parameter Change** | 33% | 50% | Modify chain parameters |
| **Software Upgrade** | 40% | 67% | Binary upgrades, hard forks |
| **Community Spend** | 33% | 50% | Max 5% of treasury per proposal |
| **Emergency** | 50% | 67% | Expedited 24-hour voting window |

#### Governance Parameters

| Parameter | Value |
|:---|:---|
| Min deposit | 100,000 AETHEL |
| Max deposit period | 7 days |
| Voting period | 7 days |
| Veto threshold | 33% |
| Vote options | Yes, No, Abstain, No with Veto |
| Governance council size | 9 members |
| Council term | 1 year |
| Council election | Stake-weighted vote |

---

### Cross-Chain Bridge

#### Ethereum Bridge

| Parameter | Value |
|:---|:---|
| Bridge type | Lock-and-mint with EIP-712 signatures |
| Min relayers | 7 |
| Max relayers | 20 |
| Consensus threshold | 67% of relayer set |
| Relayer selection | Top validators by stake |
| Challenge period | 7 days |
| Min Ethereum confirmations | 12 blocks |

#### Supported Assets

| Asset | Min Deposit | Max per Transaction | Bridge Model |
|:---|:---:|:---:|:---|
| **ETH** | 0.01 ETH | 100 ETH | Wrapped (wETH on Aethelred) |
| **USDC** | $10 | $1,000,000 | Native mint via Circle CCTP V2 |
| **USDT** | $10 | $1,000,000 | Wrapped (wUSDT on Aethelred) |

#### Rate Limits

| Parameter | Value |
|:---|:---|
| Max deposit per window | 100 AETHEL |
| Max withdrawal per window | 100 AETHEL |
| Rate limit window | 1 hour |

#### IBC (Cosmos Ecosystem)

Full Inter-Blockchain Communication protocol support for cross-chain asset transfers, proof relay, and interoperability with 200+ Cosmos chains.

---

### API Endpoints

#### Networks

| Network | REST | gRPC | WebSocket |
|:---|:---|:---|:---|
| **Mainnet** | `api.mainnet.aethelred.org` | `grpc.mainnet.aethelred.org:9090` | `wss://ws.mainnet.aethelred.org` |
| **Testnet** | `api.testnet.aethelred.org` | `grpc.testnet.aethelred.org:9090` | `wss://ws.testnet.aethelred.org` |
| **Devnet** | `api.devnet.aethelred.org` | `grpc.devnet.aethelred.org:9090` | `wss://ws.devnet.aethelred.org` |
| **Local** | `localhost:1317` | `localhost:9090` | `ws://localhost:26657/websocket` |

#### Rate Limits

| Tier | Requests / Minute | Requests / Day |
|:---|:---:|:---:|
| Anonymous | 30 | 1,000 |
| Authenticated | 300 | 50,000 |
| Enterprise | 3,000 | Unlimited |

#### Core API Routes

| Endpoint | Method | Description |
|:---|:---:|:---|
| `/v1/jobs` | POST | Submit AI compute job |
| `/v1/jobs/{id}` | GET | Query job status and results |
| `/v1/jobs/{id}/cancel` | POST | Cancel a pending job |
| `/v1/seals` | GET | Query Digital Seals |
| `/v1/seals/{id}/verify` | GET | Independently verify a seal |
| `/v1/models` | GET | Browse model registry |
| `/v1/models/{hash}` | GET | Get model metadata by hash |
| `/v1/validators` | GET | List active validators and provers |
| `/v1/validators/{addr}/stats` | GET | Validator performance statistics |
| `/v1/verification/tee` | POST | Submit TEE attestation for verification |
| `/v1/verification/zkml` | POST | Submit zkML proof for verification |
| `/v1/network/info` | GET | Chain ID, block height, peer count |
| `/v1/network/stats` | GET | TPS, job throughput, burn rate |
| `/health/aethelred` | GET | Component-level health check |
| `/metrics/aethelred` | GET | Prometheus metrics endpoint |

---

### Use Cases

#### Financial Services
- **Credit Scoring**: Verifiable XGBoost model inference with full audit trail
- **KYC / AML**: Privacy-preserving identity verification inside TEE enclaves
- **Risk Assessment**: On-chain proof that risk models were executed correctly
- **Trade Execution**: Verified algorithmic trading decisions with Digital Seal receipts

#### Healthcare
- **Medical Diagnostics**: HIPAA-compliant AI inference with BAA enforcement
- **DNA Analysis**: Genomic model execution with data residency guarantees
- **Clinical Trials**: Verifiable data processing with immutable audit trails
- **Patient Records**: Encrypted AI analysis with jurisdiction-specific compliance

#### Enterprise AI
- **Model Governance**: Prove which model version produced which output, when
- **Regulatory Reporting**: Generate verifiable compliance attestations
- **Supply Chain**: Tamper-proof AI-driven quality control and anomaly detection
- **Insurance Underwriting**: Auditable risk scoring with full model provenance

---

### Ecosystem

#### Core Infrastructure

| Repository | Description | Stack |
|:---|:---|:---:|
| [**aethelred**](https://github.com/AethelredFoundation/aethelred) | Core monorepo: validator node, Cosmos SDK modules, Rust crates, WASM VM | Go / Rust |
| [**contracts**](https://github.com/AethelredFoundation/contracts) | ERC-20 token (AETHEL), bridge, oracle, and governance contracts | Solidity |
| [**AIPs**](https://github.com/AethelredFoundation/AIPs) | Aethelred Improvement Proposals for protocol-level governance | Markdown |

#### Developer SDKs

| Repository | Description | Install |
|:---|:---|:---|
| [**aethelred-sdk-ts**](https://github.com/AethelredFoundation/aethelred-sdk-ts) | TypeScript / JavaScript SDK | `npm i @aethelred/sdk` |
| [**aethelred-sdk-py**](https://github.com/AethelredFoundation/aethelred-sdk-py) | Python SDK (with `@sovereign` decorator) | `pip install aethelred` |
| [**aethelred-sdk-go**](https://github.com/AethelredFoundation/aethelred-sdk-go) | Go SDK (Terraform compatible) | `go get github.com/AethelredFoundation/aethelred-sdk-go` |
| [**aethelred-sdk-rs**](https://github.com/AethelredFoundation/aethelred-sdk-rs) | Rust SDK (`no_std` compatible) | `cargo add aethelred-sdk` |

#### Tools & Resources

| Repository | Description |
|:---|:---|
| [**aethelred-cli**](https://github.com/AethelredFoundation/aethelred-cli) | `aethel`: interactive CLI for job submission, seal management, validator ops |
| [**vscode-aethelred**](https://github.com/AethelredFoundation/vscode-aethelred) | VS Code extension with IntelliSense, contract deployment, and debugging |
| [**aethelred-docs**](https://github.com/AethelredFoundation/aethelred-docs) | Documentation site: [docs.aethelred.io](https://docs.aethelred.io) |

---

### Technology Stack

| Layer | Technology | Details |
|:---|:---|:---|
| **Consensus** | CometBFT + ABCI++ | Vote extensions for verification result aggregation |
| **Application** | Cosmos SDK v0.50 | Custom modules: `x/pouw`, `x/seal`, `x/verify`, `x/insurance` |
| **Verification** | Multi-framework zkML | EZKL, RISC Zero, Groth16, Halo2, Plonky2 |
| **TEE** | Hardware Enclaves | Intel SGX (DCAP), AWS Nitro Enclaves, AMD SEV-SNP |
| **Cryptography** | Post-Quantum | Ed25519 + Dilithium3 (ML-DSA), Kyber768 (ML-KEM) |
| **Hashing** | Multi-algorithm | SHA-2, SHA-3 (Keccak256), BLAKE3 |
| **Bridge** | Ethereum + Circle CCTP | UUPS proxy, EIP-712 signatures, native USDC via CCTP V2 |
| **Cross-chain** | IBC Protocol | Full Cosmos ecosystem interoperability (200+ chains) |
| **Runtime** | WASM (Wasmer) | PQC, ZK, hash, and tensor precompiles |
| **Languages** | Go 1.24, Rust 1.75+, Solidity 0.8 | Node, VM/TEE services, Smart contracts |

---

### Network Status

| Network | Status | Chain ID | Notes |
|:---|:---:|:---|:---|
| **Devnet** | Active | `aethelred-devnet-1` | Local 4-validator cluster via Docker Compose |
| **Testnet** | Q2 2026 | `aethelred-testnet-1` | Public testnet with faucet and block explorer |
| **Mainnet** | Dec 2026 | `aethelred-1` | TGE and genesis launch |

---

### Roadmap

| Milestone | Target | Status |
|:---|:---:|:---:|
| Core monorepo and genesis config | Q1 2026 | Complete |
| Security audit (internal) - 27 findings remediated | Feb 2026 | Complete |
| Devnet launch (Docker Compose, 4 validators) | Q1 2026 | Complete |
| SDK releases (TypeScript, Python, Go, Rust) | Q1 2026 | Complete |
| VS Code extension and CLI tooling | Q1 2026 | Complete |
| Public testnet with faucet and explorer | Q2 2026 | In Progress |
| Trail of Bits security audit | Jul 2026 | Scheduled |
| Formal verification of consensus invariants | Q3 2026 | In Progress |
| Mainnet genesis and TGE | Dec 2026 | Planned |
| Jurisdiction-specific shards (UAE, EU, US) via IBC | 2027 | Planned |
| Dedicated data availability layer for model weights | 2028 | Planned |

---

### Getting Started

```bash
# Clone the core monorepo
git clone https://github.com/AethelredFoundation/aethelred.git
cd aethelred

# Build the validator node
make build

# Spin up a local 4-validator devnet
make local-testnet-up

# Verify all services are healthy
make local-testnet-doctor
```

> **New to Aethelred?** The [Developer Quickstart](https://docs.aethelred.io/quickstart) walks you through submitting your first AI compute job in under 10 minutes.

---

### Contributing

We welcome contributions at every level, from documentation improvements to core consensus work.

- Read the [Contributing Guide](https://github.com/AethelredFoundation/aethelred/blob/main/CONTRIBUTING.md)
- Browse [good first issues](https://github.com/AethelredFoundation/aethelred/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22)
- Submit an [Aethelred Improvement Proposal](https://github.com/AethelredFoundation/AIPs)
- Join the technical discussion on [Discord](https://discord.gg/aethelred)

We follow [Conventional Commits](https://www.conventionalcommits.org/) and require DCO sign-off on all contributions.

---

<p align="center">
  <a href="https://docs.aethelred.io"><b>Documentation</b></a> &nbsp;&middot;&nbsp;
  <a href="https://docs.aethelred.io/roadmap"><b>Roadmap</b></a> &nbsp;&middot;&nbsp;
  <a href="https://discord.gg/aethelred"><b>Discord</b></a> &nbsp;&middot;&nbsp;
  <a href="https://twitter.com/aethelred_io"><b>Twitter</b></a> &nbsp;&middot;&nbsp;
  <a href="https://github.com/AethelredFoundation/AIPs"><b>AIPs</b></a> &nbsp;&middot;&nbsp;
  <a href="https://github.com/AethelredFoundation/aethelred/blob/main/SECURITY.md"><b>Security</b></a>
</p>

<p align="center">
  <sub>Apache 2.0 Licensed &nbsp;&middot;&nbsp; Built on Cosmos SDK + CometBFT &nbsp;&middot;&nbsp; Post-Quantum from Genesis</sub>
</p>
