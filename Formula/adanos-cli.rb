class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.org"
  version "1.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.25.0/adanos-cli-1.25.0-darwin-arm64.tar.gz"
      sha256 "ee1bd50059c19040d1425c641ba8fdcc9033328d6dd2f78acd16d9f48b53828e"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.25.0/adanos-cli-1.25.0-darwin-x86_64.tar.gz"
      sha256 "42258d77fc301b6aeee2b64232f3b001f188bc3cdbdc18c14fa6e04bb186bf84"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.25.0/adanos-cli-1.25.0-linux-x86_64.tar.gz"
    sha256 "4112ae980f3e2cc3d6832b0979d61d06f34413cc9a9db91fe2d2d18b8c683068"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
