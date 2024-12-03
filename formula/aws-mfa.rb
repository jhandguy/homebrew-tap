class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.21"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.21/x86_64-apple-darwin.gz"
        sha256 "953a46e4cde4f97b472e9f096715b55f04d903e6e0670b74cfcdc9804fd62167"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.21/aarch64-apple-darwin.gz"
        sha256 "da1701d95dec9e5d85faf4c0f208232a39ff4751b2482e8c8167c17aa0fb67d4"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.21/x86_64-unknown-linux-gnu.gz"
        sha256 "15bd211419cc55ed76801c1d2d9ad2d73cc77dd15a33c8381562efc942150679"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.21/aarch64-unknown-linux-gnu.gz"
        sha256 "4453c8a0740f01f17c668c31b14cf6e67b14a886d8b1289c6be64a8631821b7d"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
