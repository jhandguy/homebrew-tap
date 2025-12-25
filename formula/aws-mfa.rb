class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.25"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.25/x86_64-apple-darwin.gz"
        sha256 "877146b1ea2f01eccfc7fd32343873a220eb828a00a6f6e1e960e899613cc275"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.25/aarch64-apple-darwin.gz"
        sha256 "77eabac0146a123c786538b3af6a24110cd398c9495f80ec8b33bb5116d0476c"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.25/x86_64-unknown-linux-gnu.gz"
        sha256 "55ae405e55cac58afcafaa9ddfb112120ae019474ecee91a74580fdd3b3643c5"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.25/aarch64-unknown-linux-gnu.gz"
        sha256 "33ae2162d21ca9b385a71a5c5947beac1ca213e31734b9922183e1aa611be1da"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
