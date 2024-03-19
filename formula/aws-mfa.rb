class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.13"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.13/x86_64-apple-darwin.gz"
        sha256 "54e982b53883eb90978ca1c25b9601e37841fe3bbcfbd723dc61f420f24d0be0"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.13/aarch64-apple-darwin.gz"
        sha256 "fe3c6c0f748864cc6bfd33cce3a708b10a81e3cfbf4f7c940c03d74cd13c3666"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.13/x86_64-unknown-linux-gnu.gz"
        sha256 "81c1f3dafdbfd773dc7ba74dc39fda6be0864a35d683980b397accf296c5422f"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.13/aarch64-unknown-linux-gnu.gz"
        sha256 "64ddd64c2ddee484c4086d5fd5d3c2926bafd4aded40f0d0f88f046089015ce9"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
