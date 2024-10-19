class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.18"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.18/x86_64-apple-darwin.gz"
        sha256 "bc30e77027e6a0ad6da03e1d2440e8ad2b0db66765b736ea3e626119e1f7acb2"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.18/aarch64-apple-darwin.gz"
        sha256 "28d9f10703bcc35a6a3ef90d2b6deacb3675b9a7a6904f9462052a821f0825a6"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.18/x86_64-unknown-linux-gnu.gz"
        sha256 "be8cf1a0437213eaa080166bf4a4daec0a6327111229e98041c27e88a38fde4b"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.18/aarch64-unknown-linux-gnu.gz"
        sha256 "bc42b3d205e74e127c32038e98f25bf0382012d3a469360a46a91bff3d1dbf7b"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
