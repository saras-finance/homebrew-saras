cask "saras-ui" do
  version "0.9.8d-0.1.2"
  sha256 "0c277e836f8283dc393b4332f3400b37cf9bb996a23d7a3375d42b9553394a43"

  url "https://publicassets.sarasfinance.com/artefacts/sarasOnPremAgent/v0.9.8d-0.1.2/darwin_arm64/saras-ui.dmg"
  name "Saras OnPrem Agent"
  desc "Saras OnPrem Agent Desktop UI"
  homepage "https://sarasfinance.com"

  app "Saras OnPrem Agent.app"

  zap trash: [
    "~/.saras",
    "~/Library/Application Support/com.sarasfinance.onpremagent",
    "~/Library/Preferences/com.sarasfinance.onpremagent.plist",
  ]
end
