class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.com"
  version "1.35.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.35.0/adanos-cli-1.35.0-darwin-arm64.tar.gz"
      sha256 "e7c2f4645f1fafc625dda43bc04872a8244883282c868ad230783c751be9a568"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.35.0/adanos-cli-1.35.0-darwin-x86_64.tar.gz"
      sha256 "a48da6db0e34820fd3f21920971cb3dd76b0d404ae444abdb02676b32b9d653f"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.35.0/adanos-cli-1.35.0-linux-x86_64.tar.gz"
    sha256 "051248badc5daf9d72a90873f5587208b7c1d3853ef9631a240e335ce8283055"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
