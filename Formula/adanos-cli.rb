class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Finance Sentiment API"
  homepage "https://adanos.org"
  version "1.20.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.20.4/adanos-cli-1.20.4-darwin-arm64.tar.gz"
      sha256 "651a0e407e913e2aba1c45185ee229882dca7c4de803a34264aaa92ac863a095"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.20.4/adanos-cli-1.20.4-darwin-x86_64.tar.gz"
      sha256 "e06dccd4b8f18671808bec3e01586e2b580741e16eeee47e969a30678935ee6d"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.20.4/adanos-cli-1.20.4-linux-x86_64.tar.gz"
    sha256 "4a00859e6ce36eecb55afa1c97bbb22c1b918d942051a242e7d6b1d366f04ae9"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
