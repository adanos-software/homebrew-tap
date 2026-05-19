class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.org"
  version "1.26.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.26.0/adanos-cli-1.26.0-darwin-arm64.tar.gz"
      sha256 "566f3801b75d45ca72cdd81d087972b80f147173f66c1283339c61ffc1959dd5"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.26.0/adanos-cli-1.26.0-darwin-x86_64.tar.gz"
      sha256 "071c4c9667592978722041f9f8885419d19e76c485270efa5eacd7981ba8e2b7"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.26.0/adanos-cli-1.26.0-linux-x86_64.tar.gz"
    sha256 "245d681045cc14c5dbe99fbe3544f2344567090dcdfed518b3267971c8af1598"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
