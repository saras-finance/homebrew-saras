cask "saras-ui-db" do
  version "0.9.8d-0.1.2"
  sha256 "4d23a649e8517328e07c39c8ad7818ba00fe7f2467b2c28c14e1a791ded133b9"

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
