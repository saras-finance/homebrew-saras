cask "saras-agent-duckdb" do
  version "0.9.8d-0.1.2"
  sha256 "96c9511fdb59b15bc34bfc99c68951ed8eececd1d0c2e82395fe9dca6a3b92fe"

  url "https://publicassets.sarasfinance.com/artefacts/sarasOnPremAgent/v0.9.8d-0.1.2/darwin_arm64/saras-ui-db.dmg"
  name "Saras Local Agent DuckDB"
  desc "Enterprise On-Premise Execution Runner & Agent Enclave Desktop UI with DuckDB"
  homepage "https://sarasfinance.com"

  app "Saras Local Agent.app"

  zap trash: [
    "~/.saras",
    "~/Library/Application Support/com.sarasfinance.local-agent",
    "~/Library/Preferences/com.sarasfinance.local-agent.plist",
  ]
end
