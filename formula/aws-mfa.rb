class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.15"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.15/x86_64-apple-darwin.gz"
        sha256 "0d5c707f8cc2f7e023efcaa3eddf6852699d8911c8a55ba52c4617a1134423f0"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.15/aarch64-apple-darwin.gz"
        sha256 "421387bf96f3a41c1b078dbd0e73ebe22b8e7fbd2202e80b97344fe1b8f41f14"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.15/x86_64-unknown-linux-gnu.gz"
        sha256 "c0fc3d4c90bbcc7ac2d8d27dcd84cd7e73ad22eb5dbf4357d42c374cb3825111"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.15/aarch64-unknown-linux-gnu.gz"
        sha256 "0b572a2fde28c57f5d5bc4cd495aa820ad7bf705525d9ef723cb8c8371cfc0c4"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
