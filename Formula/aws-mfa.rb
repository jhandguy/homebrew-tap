class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v0.2.11"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.11/x86_64-apple-darwin.gz"
        sha256 "e4c9661b1d5db82a16e2e3922912dcbd9cf0e5360e50db6715a8b2cd2fd9284e"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.11/aarch64-apple-darwin.gz"
        sha256 "8f21294d9290337f307922e815469b8cde73916c35966ddd27324e1e948672ca"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.11/x86_64-unknown-linux-gnu.gz"
        sha256 "098a0912a6a2007f5d3e84cb538768acb5fe1c9663e5ceba7f78f2cad1a06ae2"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.11/aarch64-unknown-linux-gnu.gz"
        sha256 "0a51691690895cfb75706e136768fd8167b243d811368321758fa1c140cd9e1a"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        system "#{bin}/aws-mfa --help"
    end
end