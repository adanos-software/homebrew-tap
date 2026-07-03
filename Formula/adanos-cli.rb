class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.org"
  version "1.31.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.31.0/adanos-cli-1.31.0-darwin-arm64.tar.gz"
      sha256 "77bbb1fef509763976443344ba8d0d3661df735e6d87867d43b6341fc3392c2a"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.31.0/adanos-cli-1.31.0-darwin-x86_64.tar.gz"
      sha256 "2b444faa5669d4caca2f37bd132831ab902770211fd1f44daa6c6d90d80fe3a7"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.31.0/adanos-cli-1.31.0-linux-x86_64.tar.gz"
    sha256 "2bc192675e1b715adcc055141518c872ab57bfc52e8d7b48822ae18167af8052"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
