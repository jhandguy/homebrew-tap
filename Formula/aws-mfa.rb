class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v0.3.0"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.0/x86_64-apple-darwin.gz"
        sha256 "71619b5f307e065c720c92b8e5f7bbba0f6bdca9a417fc458287adf7c9514c4c"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.0/aarch64-apple-darwin.gz"
        sha256 "d13b52b3e3464ddb92884cf15762bba0ad7f9d40d37e8cee1d738b4cc4bf0e6d"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.0/x86_64-unknown-linux-gnu.gz"
        sha256 "01c93283122bb207de6da22a8cee99dbfb69d15b57b1a1a4d938fe73ca6680cf"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.0/aarch64-unknown-linux-gnu.gz"
        sha256 "93a546bbdd0ec706762bef3693129ee02e803f2d6298ed9de6d7ee0aa6aa2a97"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        system "#{bin}/aws-mfa --version"
    end
end
