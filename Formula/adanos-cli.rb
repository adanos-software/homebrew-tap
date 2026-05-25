class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.org"
  version "1.28.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.28.0/adanos-cli-1.28.0-darwin-arm64.tar.gz"
      sha256 "e18b98e9a7cc72acf809c865deed3af12cf2cd0fc1a1cd5c761efb310d09fed0"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.28.0/adanos-cli-1.28.0-darwin-x86_64.tar.gz"
      sha256 "74fa2ca2b68087c986808cb8ac6657eca8182be58972f9a45edac533438b3154"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.28.0/adanos-cli-1.28.0-linux-x86_64.tar.gz"
    sha256 "a1026506b1a78821f3cf6433c305877b28b4b48db1f95e46caf822f497e380e8"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
