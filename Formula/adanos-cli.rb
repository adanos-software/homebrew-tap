class AdanosCli < Formula
  desc "Comprehensive CLI for the Adanos Market Sentiment API"
  homepage "https://adanos.org"
  version "1.23.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.23.0/adanos-cli-1.23.0-darwin-arm64.tar.gz"
      sha256 "f179c0c67443e6e31a4c85e9b5511b6248934bc98160cd3df3ac6b13053dfcce"
    else
      url "https://github.com/adanos-software/adanos-cli/releases/download/v1.23.0/adanos-cli-1.23.0-darwin-x86_64.tar.gz"
      sha256 "3f26e40fd9771f6b408570bac6e74add9ad9f377e0661b1aa455da35d6e79e52"
    end
  end

  on_linux do
    url "https://github.com/adanos-software/adanos-cli/releases/download/v1.23.0/adanos-cli-1.23.0-linux-x86_64.tar.gz"
    sha256 "fc7f7d5c62f11744d724ead147aff0bd0c75ec1e1113ddef173e2c86d28644ac"
  end

  def install
    bin.install "adanos"
  end

  test do
    assert_match "adanos", shell_output("#{bin}/adanos --help")
  end
end
