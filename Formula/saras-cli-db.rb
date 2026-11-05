class SarasCliDb < Formula
  desc "Saras OnPrem Agent CLI with Embedded DuckDB"
  homepage "https://sarasfinance.com"
  version "0.9.8d-0.1.2"

  depends_on arch: :arm64
  depends_on :macos

  url "https://publicassets.sarasfinance.com/artefacts/sarasOnPremAgent/v0.9.8d-0.1.2/darwin_arm64/saras-cli-db"
  sha256 "dc8e1f8b1cc59d7922edc3543f20ec2f8750132b2dec12598e78a51393b749b3"

  def install
    bin.install "saras-cli-db"
  end

  test do
    system "#{bin}/saras-cli-db", "--help"
  end
end
