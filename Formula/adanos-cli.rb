class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.org"
  version "1.22.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.22.0/adanos-cli-1.22.0-darwin-arm64.tar.gz"
      sha256 "342e449642277cb443eb5f101e3ac802c0a7b5fe5984c57e93915fcd3097dae5"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.22.0/adanos-cli-1.22.0-darwin-x86_64.tar.gz"
      sha256 "4522d08c21a107f0042f9aaea2442d0a49f4ca1aaa21ddf986d837877d61d589"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.22.0/adanos-cli-1.22.0-linux-x86_64.tar.gz"
    sha256 "20c3e4b11424c71d08900e7fb7ccabb299f197e887b89a0edaac43ed0e94ef7e"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
