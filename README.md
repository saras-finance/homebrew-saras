# Saras Homebrew Tap

Official Homebrew tap for the **Saras On-Premise Execution Runner & Agent Enclave** on macOS (Apple Silicon arm64).

---

## Getting Started

### 1. Tap the Repository

```bash
brew tap saras-finance/saras
```

---

## Available Packages

| Package | Type | Description | Command |
| :--- | :--- | :--- | :--- |
| **`saras-cli`** | Formula (CLI) | Saras On-Premise Runner (Standard CLI) | `brew install saras-cli` |
| **`saras-cli-db`** | Formula (CLI) | Saras On-Premise Runner with Embedded DuckDB | `brew install saras-cli-db` |
| **`saras-ui`** | Cask (GUI) | Saras On-Premise Desktop Application | `brew install --cask saras-ui` |
| **`saras-ui-db`** | Cask (GUI) | Saras On-Premise Desktop Application with DuckDB | `brew install --cask saras-ui-db` |

---

## Usage by Variant

### 1. Standard Headless CLI (`saras-cli`)
For servers, automated scripts, CI/CD runners, and background daemons:
```bash
saras-cli --help
```

### 2. Analytical CLI with Embedded DuckDB (`saras-cli-db`)
CLI runner with embedded DuckDB analytical database:
```bash
saras-cli-db --help
```

### 3. Desktop Application (`saras-ui`)
Installs **Saras OnPrem Agent.app** into `/Applications`:
- Launch via macOS Spotlight or Launchpad (**Saras OnPrem Agent**).
- Includes embedded local agent runner and full GUI management console.

### 4. Desktop Application with Embedded DuckDB (`saras-ui-db`)
Installs **Saras OnPrem Agent.app** with embedded DuckDB analytical engine into `/Applications`:
- Launch via macOS Spotlight or Launchpad (**Saras OnPrem Agent**).

---

## Version Pinning

Specific release versions can be pinned directly:

```bash
# Pin specific release versions:
brew install saras-cli@0.9.8d-0.1.2
brew install saras-cli-db@0.9.8d-0.1.2
```

---

## Updating

```bash
brew update
brew upgrade saras-cli
brew upgrade saras-cli-db
brew upgrade --cask saras-ui
brew upgrade --cask saras-ui-db
```
