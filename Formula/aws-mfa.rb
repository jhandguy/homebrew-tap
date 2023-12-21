class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.10"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.10/x86_64-apple-darwin.gz"
        sha256 "a587a0c1cae5600578198567c80257d92dd8c47edbdaf6447b25c8813eec57f0"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.10/aarch64-apple-darwin.gz"
        sha256 "b6fce7db34ac1e5f2da9b7fc748aea518b47bca9b8f189a12d2208951540e075"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.10/x86_64-unknown-linux-gnu.gz"
        sha256 "511fef85402b007b615e36ba080d9d887893c69b5382f7c43d1fbd4096e29356"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.10/aarch64-unknown-linux-gnu.gz"
        sha256 "c24a4a5e7955ea6a10a31a8159881998e7e4116a84e53c2cc572a7cba8d87ab6"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
