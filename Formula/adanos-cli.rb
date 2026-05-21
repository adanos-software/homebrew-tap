class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.org"
  version "1.27.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.27.2/adanos-cli-1.27.2-darwin-arm64.tar.gz"
      sha256 "1ee3dffb904aa39d4b8c82b5ef08b96682f6b3c8a3e9bac8ea687dc101e08a57"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.27.2/adanos-cli-1.27.2-darwin-x86_64.tar.gz"
      sha256 "5b385d31b81c4215f2611268205bb61478fe2e6dc9bcb217c54f7cf8f705ec11"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.27.2/adanos-cli-1.27.2-linux-x86_64.tar.gz"
    sha256 "7c9fcb11fb769864f28db943fd4a74eeaab8040f53387db5314e91c852e6f874"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
