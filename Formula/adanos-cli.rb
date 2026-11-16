class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.com"
  version "1.34.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.34.1/adanos-cli-1.34.1-darwin-arm64.tar.gz"
      sha256 "3746eaad691f5cb81b041b40bde929585cbfcf92f13b98b88a70fd3932ba6279"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.34.1/adanos-cli-1.34.1-darwin-x86_64.tar.gz"
      sha256 "c5216e9ef33ef456d63b1ca6781e30ba6d4b807517a4d19e2ca9eff160d82527"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.34.1/adanos-cli-1.34.1-linux-x86_64.tar.gz"
    sha256 "2181656dc5fa37d6cc2979caf1382d20c788cd4518d9cbe4e255093c101d654c"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
