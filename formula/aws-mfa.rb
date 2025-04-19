class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.24"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.24/x86_64-apple-darwin.gz"
        sha256 "a4aabbdc97fdf15b9ea3a972ef55748b6f02f26c97d614bd670100b52770230b"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.24/aarch64-apple-darwin.gz"
        sha256 "320262b987be4b9241e08ecfdd8c15b265b2f4cf19aa61baff52b8b2b08a1a8f"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.24/x86_64-unknown-linux-gnu.gz"
        sha256 "7fec3ea2768b569568cd42700afea5bad3ab710d50b9100d8cf9214bea037562"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.24/aarch64-unknown-linux-gnu.gz"
        sha256 "5c2c243a88b3fe4343c4f285822d75b362e2bbd9dd03ddb6baefd929589d13e2"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
