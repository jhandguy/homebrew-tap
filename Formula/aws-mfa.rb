class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.4"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.4/x86_64-apple-darwin.gz"
        sha256 "2548b3fbe95d9b2f2781865553c20092355a68a982c6a7b7648888798184348d"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.4/aarch64-apple-darwin.gz"
        sha256 "830441766a14762a5ade7f3d410486343837f01d549552838887174cf6011377"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.4/x86_64-unknown-linux-gnu.gz"
        sha256 "08f141bee2174c7bf686bb74870fdf3720a7e55dcaf0fac1467fa47c19d93f78"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.4/aarch64-unknown-linux-gnu.gz"
        sha256 "f31379115123eb83c866d14a419ac9a4d65abef3441d86eea14cdf61697a75b9"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
