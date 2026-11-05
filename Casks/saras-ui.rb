cask "saras-ui" do
  version "0.9.8d-0.1.2"
  sha256 "bd532146676722324544529e9179bf7931dde89c9f0545f566e35d92fb0af5c2"

  url "https://publicassets.sarasfinance.com/artefacts/sarasOnPremAgent/v0.9.8d-0.1.2/darwin_arm64/saras-ui.dmg"
  name "Saras OnPrem Agent"
  desc "Saras OnPrem Agent Desktop UI"
  homepage "https://sarasfinance.com"

  app "Saras OnPrem Agent.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "-r", "com.apple.quarantine", "#{appdir}/Saras OnPrem Agent.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/.saras",
    "~/Library/Application Support/com.sarasfinance.onpremagent",
    "~/Library/Preferences/com.sarasfinance.onpremagent.plist",
  ]
end
