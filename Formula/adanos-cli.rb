class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Finance Sentiment API"
  homepage "https://adanos.org"
  version "1.20.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.20.2/adanos-cli-1.20.2-darwin-arm64.tar.gz"
      sha256 "14e89986f220b1a8abf748429d5806aab453c5fc9fb278c83f94408013db47fa"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.20.2/adanos-cli-1.20.2-darwin-x86_64.tar.gz"
      sha256 "6423101b9e8d1ca416872a3bb49596c3c230fbcee2fe5f4b27d2d178e1a1c3db"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.20.2/adanos-cli-1.20.2-linux-x86_64.tar.gz"
    sha256 "3a959e29a285fda48e523898b51851b5e4b200d96f436f4779277eb46cf57ce3"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
