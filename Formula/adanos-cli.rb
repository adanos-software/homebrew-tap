class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.com"
  version "1.34.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.34.0/adanos-cli-1.34.0-darwin-arm64.tar.gz"
      sha256 "7c5f009fd7e5b5f81c018c29d1cd0ff9d56d90a0b47bf6d95b73c6beb38f248f"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.34.0/adanos-cli-1.34.0-darwin-x86_64.tar.gz"
      sha256 "4f9bfcd167f536b20cb252974adad1b876a366522e3f6e37736e9612e0bef013"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.34.0/adanos-cli-1.34.0-linux-x86_64.tar.gz"
    sha256 "d82520ecf0eea92f1c83eb9130806f1aa95afffe2e2c9ecbf04e497c7e5a62e0"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
