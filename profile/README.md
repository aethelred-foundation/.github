<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/AethelredFoundation/.github/main/profile/banner-dark.svg">
    <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/AethelredFoundation/.github/main/profile/banner-light.svg">
    <img alt="Aethelred — Sovereign Layer 1 for Verifiable AI" src="https://raw.githubusercontent.com/AethelredFoundation/.github/main/profile/banner-dark.svg" width="900">
  </picture>
</p>

<p align="center">
  <a href="https://docs.aethelred.io"><img src="https://img.shields.io/badge/Docs-aethelred.io-FF6B35?style=flat-square&logo=gitbook&logoColor=white" alt="Documentation" /></a>
  <a href="https://discord.gg/aethelred"><img src="https://img.shields.io/badge/Discord-Community-5865F2?style=flat-square&logo=discord&logoColor=white" alt="Discord" /></a>
  <a href="https://twitter.com/aethelred_io"><img src="https://img.shields.io/badge/Twitter-%40aethelred__io-1DA1F2?style=flat-square&logo=x&logoColor=white" alt="Twitter" /></a>
  <a href="https://github.com/AethelredFoundation/aethelred/blob/main/LICENSE"><img src="https://img.shields.io/badge/License-Apache_2.0-blue?style=flat-square" alt="License" /></a>
  <a href="https://go.dev"><img src="https://img.shields.io/badge/Go-1.24-00ADD8?style=flat-square&logo=go&logoColor=white" alt="Go" /></a>
  <a href="https://www.rust-lang.org"><img src="https://img.shields.io/badge/Rust-1.75+-DEA584?style=flat-square&logo=rust&logoColor=white" alt="Rust" /></a>
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

Users submit AI inference jobs. Validators execute them inside Trusted Execution Environments, generate zero-knowledge proofs of correct execution, and reach BFT consensus via ABCI++ vote extensions. The result is an immutable **Digital Seal** — a verifiable, on-chain attestation linking model, input, output, and proof.

---

### Why Aethelred

<table>
<tr>
<td width="50%" valign="top">

<h4>Proof-of-Useful-Work</h4>

Validators earn rewards by performing real AI inference — not wasting compute on empty puzzles. Every block producer contributes to a global verifiable compute marketplace. Stake-weighted voting (70%) combined with compute contribution scoring (30%).

</td>
<td width="50%" valign="top">

<h4>Digital Seals</h4>

Immutable on-chain attestations linking AI model + input + output + cryptographic proof. Seals carry regulatory metadata (GDPR, HIPAA, OFAC), support revocation, and are independently verifiable by anyone, forever.

</td>
</tr>
<tr>
<td width="50%" valign="top">

<h4>Post-Quantum from Genesis</h4>

Dual-key scheme combining Ed25519 with NIST-standard Dilithium3 (ML-DSA) for signatures and Kyber768 (ML-KEM) for key encapsulation. Quantum-resistant by design, not bolted on as an afterthought.

</td>
<td width="50%" valign="top">

<h4>Hybrid TEE + zkML Verification</h4>

Hardware execution in Intel SGX, AWS Nitro, or AMD SEV-SNP enclaves. Mathematical verification via EZKL, RISC Zero, Halo2, Groth16, or Plonky2. Trust hardware *and* math — not one or the other.

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

### Ecosystem

#### Core Infrastructure

| Repository | Description | Stack |
|:---|:---|:---:|
| [**aethelred**](https://github.com/AethelredFoundation/aethelred) | Core monorepo — validator node, Cosmos SDK modules, Rust crates, WASM VM | Go / Rust |
| [**contracts**](https://github.com/AethelredFoundation/contracts) | ERC-20 token (AETHEL), bridge, oracle, and governance contracts | Solidity |
| [**AIPs**](https://github.com/AethelredFoundation/AIPs) | Aethelred Improvement Proposals — protocol-level governance | Markdown |

#### Developer SDKs

| Repository | Description | Install |
|:---|:---|:---|
| [**aethelred-sdk-ts**](https://github.com/AethelredFoundation/aethelred-sdk-ts) | TypeScript / JavaScript SDK | `npm i @aethelred/sdk` |
| [**aethelred-sdk-py**](https://github.com/AethelredFoundation/aethelred-sdk-py) | Python SDK | `pip install aethelred` |
| [**aethelred-sdk-go**](https://github.com/AethelredFoundation/aethelred-sdk-go) | Go SDK | `go get github.com/AethelredFoundation/aethelred-sdk-go` |
| [**aethelred-sdk-rs**](https://github.com/AethelredFoundation/aethelred-sdk-rs) | Rust SDK | `cargo add aethelred-sdk` |

#### Tools & Resources

| Repository | Description |
|:---|:---|
| [**aethelred-cli**](https://github.com/AethelredFoundation/aethelred-cli) | `aethel` — interactive CLI for job submission, seal management, validator ops |
| [**vscode-aethelred**](https://github.com/AethelredFoundation/vscode-aethelred) | VS Code extension with IntelliSense, contract deployment, and debugging |
| [**aethelred-docs**](https://github.com/AethelredFoundation/aethelred-docs) | Documentation site — [docs.aethelred.io](https://docs.aethelred.io) |

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
| **Bridge** | Ethereum | UUPS proxy + EIP-712 signatures, lock-and-mint |
| **Cross-chain** | IBC Protocol | Full Cosmos ecosystem interoperability |
| **Runtime** | WASM (Wasmer) | PQC, ZK, and hash precompiles |
| **Languages** | Go 1.24, Rust 1.75+, Solidity 0.8 | Node, VM/TEE, Contracts |

---

### Network

| Network | Status | Details |
|:---|:---:|:---|
| **Devnet** | Active | Local 4-validator cluster via Docker Compose |
| **Testnet** | Q2 2026 | Public testnet with faucet and block explorer |
| **Mainnet** | Dec 2026 | TGE and genesis launch |

---

### Security

Security is a foundational design constraint, not an afterthought.

- **Post-quantum cryptography** baked in from genesis — Dilithium3 + Kyber768
- **Hardware TEE attestation** — Intel DCAP, AWS Nitro CBOR, AMD SEV-SNP quote verification
- **Encrypted mempool** with threshold encryption to prevent MEV and front-running
- **Circuit breakers** for anomaly detection and emergency halts
- **Compliance-native** — GDPR, HIPAA, OFAC, CCPA built into the seal and verification modules
- **Trail of Bits** security audit scheduled for July 2026
- **27 findings** identified and remediated across core modules

Report vulnerabilities responsibly via our [Security Policy](https://github.com/AethelredFoundation/aethelred/blob/main/SECURITY.md).

---

### Contributing

We welcome contributions at every level — from documentation improvements to core consensus work.

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
