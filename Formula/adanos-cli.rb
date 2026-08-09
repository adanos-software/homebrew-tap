class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.org"
  version "1.32.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.32.0/adanos-cli-1.32.0-darwin-arm64.tar.gz"
      sha256 "433b9482b68829962a8c290f55b731eabc124e6b436922aba80ef08e72109ed9"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.32.0/adanos-cli-1.32.0-darwin-x86_64.tar.gz"
      sha256 "78979fa017aec4ee220bd44fc6f06daadb6689dc81e3445ec88ffc9717a7f85a"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.32.0/adanos-cli-1.32.0-linux-x86_64.tar.gz"
    sha256 "78e2de61888713563919981d0f0b5972498bcac83ff0dbdcd2304a79f494000d"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
