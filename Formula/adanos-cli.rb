class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Finance Sentiment API"
  homepage "https://adanos.org"
  version "1.20.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.20.5/adanos-cli-1.20.5-darwin-arm64.tar.gz"
      sha256 "98080fa46e59c133bf258ae718cad28c8959f10dfaf360846d168c2b3e928eac"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.20.5/adanos-cli-1.20.5-darwin-x86_64.tar.gz"
      sha256 "4bfd4f4046a5d0cfb8598a2a850a6d5fbb59b3fb2157c48e51962bd59d68cc57"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.20.5/adanos-cli-1.20.5-linux-x86_64.tar.gz"
    sha256 "e2efb3233f8be95c4e0466a5f05a6d6f22d489ff784c728bd6ad1fb11a91b95f"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
