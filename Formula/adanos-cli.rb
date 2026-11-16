class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.com"
  version "1.34.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.34.1/adanos-cli-1.34.1-darwin-arm64.tar.gz"
      sha256 "0b6c3698d53b117fec264709ae35e207688332eb86512871ae3a0a1e1eb753b1"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.34.1/adanos-cli-1.34.1-darwin-x86_64.tar.gz"
      sha256 "17a9074e9aad38ae3fd2d3537791658750b619c330add636b4331c1df8ee0c87"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.34.1/adanos-cli-1.34.1-linux-x86_64.tar.gz"
    sha256 "223b6debf7e2f92e906ebbc5b88d7ed55868fb5d8e9423b189a4f0f9390dcf2b"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
