class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.org"
  version "1.27.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.27.0/adanos-cli-1.27.0-darwin-arm64.tar.gz"
      sha256 "90d18ffb5f2116b601354cc2fb6dcca13d349985a339456cde7ad766658709dc"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.27.0/adanos-cli-1.27.0-darwin-x86_64.tar.gz"
      sha256 "702fa8357147f56d6b452c54bc266ab140870f7319ab581def5522f24032ea65"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.27.0/adanos-cli-1.27.0-linux-x86_64.tar.gz"
    sha256 "a658308a9fa6cba7e8baae271ba395c3c0cf5fc553fea36ae863ed280543e919"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
