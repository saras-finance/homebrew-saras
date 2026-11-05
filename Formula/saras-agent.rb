class SarasAgent < Formula
  desc "Saras Enterprise On-Premise Execution Runner & Agent Enclave"
  homepage "https://sarasfinance.com"
  version "0.9.8d-0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://publicassets.sarasfinance.com/artefacts/sarasOnPremAgent/v0.9.8d-0.1.2/darwin_arm64/saras-cli"
      sha256 "67d1d6e6f10d0d730c23bfc12cded5adfe1b68fe447213b13f9bd1ffb505fca9"

      def install
        bin.install "saras-cli" => "saras-agent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://publicassets.sarasfinance.com/artefacts/sarasOnPremAgent/v0.9.8d-0.1.2/linux_x64/saras-cli"
      sha256 ""

      def install
        bin.install "saras-cli" => "saras-agent"
      end
    end
  end

  test do
    system "#{bin}/saras-agent", "--help"
  end
end
