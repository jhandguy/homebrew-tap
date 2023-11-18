class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.7"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.7/x86_64-apple-darwin.gz"
        sha256 "68f9cd71ef99616f0fac6fd6f1e397d291081fc674aff766f46d373612f707ef"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.7/aarch64-apple-darwin.gz"
        sha256 "4812460b70cc2f64c6621dea507c78bef801ff6164fc15cfcf6f6efcbc701598"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.7/x86_64-unknown-linux-gnu.gz"
        sha256 "d4c68c35058bdaa1a7e51bc95b76c4b52494e483ef98b53e4b8da3c804d781a9"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.7/aarch64-unknown-linux-gnu.gz"
        sha256 "3dfc5e6bab9d1e55fd5d8458afda3bd428f7237b43f11a0dada7e9c46867737a"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
