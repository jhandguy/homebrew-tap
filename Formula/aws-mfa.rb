class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v0.2.12"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.12/x86_64-apple-darwin.gz"
        sha256 "a540b5338539e2fa2bec2ae73c1fdaa2f28b05cb21580d9cbbc4cef2ded03061"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.12/aarch64-apple-darwin.gz"
        sha256 "f1fb014340dea508cf65eebbda0febbedba4a47b0f9f9eba82559f3180557922"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.12/x86_64-unknown-linux-gnu.gz"
        sha256 "b63ca10ed596f0cd876ac35af182540b2edaf4f6e710b6644e59acaaabd31fd8"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.12/aarch64-unknown-linux-gnu.gz"
        sha256 "f213b7e982f7b637b41a16e291a4d4092544c66ff344de9f1084189a9aba6011"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        system "#{bin}/aws-mfa --help"
    end
end
