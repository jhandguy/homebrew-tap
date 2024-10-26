class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.20"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.20/x86_64-apple-darwin.gz"
        sha256 "64221557a11d548b7e86fa46ccc616b0a2dd2298019fbb6c166c829ecd9d3e7a"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.20/aarch64-apple-darwin.gz"
        sha256 "656cb1419ed3a8f719c03337f021c98752b7cc8516055a4547f117b8bcb983a8"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.20/x86_64-unknown-linux-gnu.gz"
        sha256 "86910b9fcf4a5f810ae998505be5fe68af4a8275bc997f2341c56695ece7e9c1"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.20/aarch64-unknown-linux-gnu.gz"
        sha256 "565d5aa016f0d467fa687806751e51f057be7e207ff271496af9434c3606d813"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
