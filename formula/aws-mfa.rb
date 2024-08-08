class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.17"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.17/x86_64-apple-darwin.gz"
        sha256 "9bd3916e9d4a09d6f83a46dc91cbfa62c0907cbe8992c4e48ff5fd386d0dfc98"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.17/aarch64-apple-darwin.gz"
        sha256 "f7b431334c3d46284d552ff99a830ebd4650b13b61114f460f085f0293baaf0d"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.17/x86_64-unknown-linux-gnu.gz"
        sha256 "b46e93985371e200a3b63eab4f7c3f98282931c77a62aaf9b2625c2e4d594f24"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.17/aarch64-unknown-linux-gnu.gz"
        sha256 "ccbe788d8db7c87826abc08adb533eb1666488378cef58bf134e635cb4e71913"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
