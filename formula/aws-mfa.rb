class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.22"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.22/x86_64-apple-darwin.gz"
        sha256 "64e69f04571c3a46f156c3d304da3c24fbb242138ae1820f05b5732dfe180952"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.22/aarch64-apple-darwin.gz"
        sha256 "14e201e2c75b4d5ae4795b6e02276a8a3b983b20c3482328261fc55bf638522c"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.22/x86_64-unknown-linux-gnu.gz"
        sha256 "aeb9e7f3475e93d4f7cca78b49d6a61731335bf7fe92a8449debf8e4b04087b7"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.22/aarch64-unknown-linux-gnu.gz"
        sha256 "45c73774fb0ab518b263a1c17bbf9d72d44468f638e0bad94e51596a5af2da0b"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
