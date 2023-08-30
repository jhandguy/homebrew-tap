class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.0"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.0/x86_64-apple-darwin.gz"
        sha256 "d54133bc18976925af6faeeb6df3d8b9c56c2dba2027623548d7f2c3efb00c9b"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.0/aarch64-apple-darwin.gz"
        sha256 "87da291545834117179960c401c28fb888a7209447aa79325b75a5c5f4e1b7cf"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.0/x86_64-unknown-linux-gnu.gz"
        sha256 "d277c4d7b0c89655d97e4b3c5948f27989b7b20177e199d3aa032c49522f2d21"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.0/aarch64-unknown-linux-gnu.gz"
        sha256 "73a85ecc55b7dc2928ca74592a0bbbb957d54004c6ac6c8d62dbfb2831cd7fc2"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match version.to_s, shell_output("#{bin}/aws-mfa --version")
    end
end
