class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.org"
  version "1.29.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.29.0/adanos-cli-1.29.0-darwin-arm64.tar.gz"
      sha256 "e550915013f4b6e320f75a93fc17195b60a358fd86d2ef47f624afde4d2f833d"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.29.0/adanos-cli-1.29.0-darwin-x86_64.tar.gz"
      sha256 "5f4e9135985c364e8884f4276342747a3b44187d775a60268e1429f8e623e08c"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.29.0/adanos-cli-1.29.0-linux-x86_64.tar.gz"
    sha256 "a2ab8d17051f21dd43daf2fe2745180569accd8a87a95bc733dd007114adc00f"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
