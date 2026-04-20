class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.org"
  version "1.24.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.24.0/adanos-cli-1.24.0-darwin-arm64.tar.gz"
      sha256 "c786666c97f3f59870f0b8bf23b6d5a22a4467231f003acf56fcabd9773d97c2"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.24.0/adanos-cli-1.24.0-darwin-x86_64.tar.gz"
      sha256 "f36cc89ea5d64fbbc2222b4f67839b07882b51cf607a45199f1ec7ac4a19fdf7"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.24.0/adanos-cli-1.24.0-linux-x86_64.tar.gz"
    sha256 "fbb5d3e0b5ca7caa4d18be7435395b924910c78585cab918586dbab672f42904"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
