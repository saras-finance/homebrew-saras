cask "saras-ui-db" do
  version "0.9.8d-0.1.2"
  sha256 "96c9511fdb59b15bc34bfc99c68951ed8eececd1d0c2e82395fe9dca6a3b92fe"

  url "https://publicassets.sarasfinance.com/artefacts/sarasOnPremAgent/v0.9.8d-0.1.2/darwin_arm64/saras-ui-db.dmg"
  name "Saras OnPrem Agent DuckDB"
  desc "Saras OnPrem Agent Desktop UI with DuckDB"
  homepage "https://sarasfinance.com"

  app "Saras OnPrem Agent.app"

  zap trash: [
    "~/.saras",
    "~/Library/Application Support/com.sarasfinance.onpremagent",
    "~/Library/Preferences/com.sarasfinance.onpremagent.plist",
  ]
end
