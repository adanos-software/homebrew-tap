class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Finance Sentiment API"
  homepage "https://adanos.org"
  version "1.20.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.20.3/adanos-cli-1.20.3-darwin-arm64.tar.gz"
      sha256 "1a52d62a49f1d2d2850f3d51be24519706c1a8ccb60a60298bdf4f1c096870de"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.20.3/adanos-cli-1.20.3-darwin-x86_64.tar.gz"
      sha256 "a5760ce31461fd11ecaa44f9b79882201f28252672418a343734b1acd089a38f"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.20.3/adanos-cli-1.20.3-linux-x86_64.tar.gz"
    sha256 "a63f48fae155ec90e55e14a8a18e391e6fe782f33d5b5f2040a9eba57cee070a"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
