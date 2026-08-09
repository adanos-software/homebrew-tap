class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.org"
  version "1.33.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.33.0/adanos-cli-1.33.0-darwin-arm64.tar.gz"
      sha256 "3b1a5c17137a12144d44b29c984ada6ae676cba34108bb66b422416acd6556ba"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.33.0/adanos-cli-1.33.0-darwin-x86_64.tar.gz"
      sha256 "60bb6e9041fce510c7034eebaa97f8cb8c73b7257a03c42eea6e0f9fbc00c57b"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.33.0/adanos-cli-1.33.0-linux-x86_64.tar.gz"
    sha256 "acbb0e6a33f308824411280eae1c465e382ffeff2b9ceb461cd929292c72e01a"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
