class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v0.3.1"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.1/x86_64-apple-darwin.gz"
        sha256 "e6e04f6a9c161d3b0bb21e5a8539a2530a55ab8868a9acade3385340b5beb2c2"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.1/aarch64-apple-darwin.gz"
        sha256 "439c5146fdfb7af6927d2a389007043a4e6953eabcbe86c697cfae204e6b370f"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.1/x86_64-unknown-linux-gnu.gz"
        sha256 "6cf60746467a3776de71e3629bd6191cebc4abc6d6fcdd5f72340b7f0b94a3d1"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.1/aarch64-unknown-linux-gnu.gz"
        sha256 "0c3c831ebb1722d7112694d531e64d93eeb75a3fe172394250bf4a58e437ef70"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        system "#{bin}/aws-mfa --version"
    end
end
