class SarasCliAT098d012 < Formula
  desc "Saras OnPrem Agent CLI (v0.9.8d-0.1.2)"
  homepage "https://sarasfinance.com"
  version "0.9.8d-0.1.2"

  depends_on arch: :arm64
  depends_on :macos

  url "https://publicassets.sarasfinance.com/artefacts/sarasOnPremAgent/v0.9.8d-0.1.2/darwin_arm64/saras-cli"
  sha256 "67d1d6e6f10d0d730c23bfc12cded5adfe1b68fe447213b13f9bd1ffb505fca9"

  def install
    bin.install "saras-cli"
  end

  test do
    system "#{bin}/saras-cli", "--help"
  end
end
