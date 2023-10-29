class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.6"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.6/x86_64-apple-darwin.gz"
        sha256 "8683a4a0a150515c55529e26a78d04f8b360e9cb19f60a0922b080f45258043f"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.6/aarch64-apple-darwin.gz"
        sha256 "eac37de90416481c57252f4d3a72378b19aa04d86bd6b3022f9fd9f67235297e"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.6/x86_64-unknown-linux-gnu.gz"
        sha256 "0f3a07f96a3649aeae696803d75c704e2a0e4db93802fcb84ad43a2d72cf9692"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.6/aarch64-unknown-linux-gnu.gz"
        sha256 "7b73a0f601d9a83ac51f744abd61bbd52533ab7d2f2d305ec46e0b358a9252bb"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
