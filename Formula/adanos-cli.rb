class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.org"
  version "1.27.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.27.1/adanos-cli-1.27.1-darwin-arm64.tar.gz"
      sha256 "a09f2390897b3102f65dcfb12f21106b8060944943c586cf98e68011b8a0c790"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.27.1/adanos-cli-1.27.1-darwin-x86_64.tar.gz"
      sha256 "e34f20cec009700a97652f6e80edf776f9c640290dbea55ba90cfbeb15bac1dd"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.27.1/adanos-cli-1.27.1-linux-x86_64.tar.gz"
    sha256 "2273f15858170d92f19cbc8b7509fb5a81b86656e52a25d7df8502cc4d82682a"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
