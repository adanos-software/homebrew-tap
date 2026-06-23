class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.org"
  version "1.30.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.30.0/adanos-cli-1.30.0-darwin-arm64.tar.gz"
      sha256 "d17953ef0bff9c41e1ff4b1628f64a53402c727e7f6c5a80885368f79286f447"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.30.0/adanos-cli-1.30.0-darwin-x86_64.tar.gz"
      sha256 "39bf1d5f04058a10e0aacc5fed28ff50fed477b4a36df3ce2b3a96f34cce9f12"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.30.0/adanos-cli-1.30.0-linux-x86_64.tar.gz"
    sha256 "2e7e0e8468c4135c79ae26f70e7b2c4354b3e546281d5795aa7fe31e3b447769"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
