class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Finance Sentiment API"
  homepage "https://adanos.org"
  version "1.21.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.21.0/adanos-cli-1.21.0-darwin-arm64.tar.gz"
      sha256 "4a3aa50cf9293d131cb8f760bd2717fcd058783ce436c348f8b758f4b49a0fd5"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.21.0/adanos-cli-1.21.0-darwin-x86_64.tar.gz"
      sha256 "7fe189b0a9cc402df2af002fc68aa641c655d4e5d85de543a655c5ad4c2078bd"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.21.0/adanos-cli-1.21.0-linux-x86_64.tar.gz"
    sha256 "8cb98ef3a4c6e8c2083e327e784e26ea0777cfeda300318ddd22f733fae9a4c6"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
