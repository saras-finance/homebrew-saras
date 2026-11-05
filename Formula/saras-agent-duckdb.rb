class SarasAgentDuckdb < Formula
  desc "Saras Enterprise On-Premise Execution Runner with Embedded DuckDB"
  homepage "https://sarasfinance.com"
  version "0.9.8d-0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://publicassets.sarasfinance.com/artefacts/sarasOnPremAgent/v0.9.8d-0.1.2/darwin_arm64/saras-cli-db"
      sha256 "dc8e1f8b1cc59d7922edc3543f20ec2f8750132b2dec12598e78a51393b749b3"

      def install
        bin.install "saras-cli-db" => "saras-agent-duckdb"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://publicassets.sarasfinance.com/artefacts/sarasOnPremAgent/v0.9.8d-0.1.2/linux_x64/saras-cli-db"
      sha256 ""

      def install
        bin.install "saras-cli-db" => "saras-agent-duckdb"
      end
    end
  end

  test do
    system "#{bin}/saras-agent-duckdb", "--help"
  end
end
