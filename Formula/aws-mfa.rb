class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.11"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.11/x86_64-apple-darwin.gz"
        sha256 "d7a5370448eee1ab60f49f2ce7a989076a2a6a6495632f83a32126833a145369"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.11/aarch64-apple-darwin.gz"
        sha256 "1b6b875bf7c9e33ee13fbd3fbd1416c85f2d6eac9c0d1ff420dd068a7ed0fbef"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.11/x86_64-unknown-linux-gnu.gz"
        sha256 "adbe7616352246e56d4bbc2b328115e1c42c58b9a2119a98b105ff7433aaf6db"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.11/aarch64-unknown-linux-gnu.gz"
        sha256 "0a25a9fbbfb7984283f05faaf474c602ee5f1749b904c49067358b90fd8f5fa4"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
