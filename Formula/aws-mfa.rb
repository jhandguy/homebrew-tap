class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v0.3.3"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.3/x86_64-apple-darwin.gz"
        sha256 "978e70c6a3aee753bc357c26141e6678d02403973eb6f3d7d0d007367ec55dfb"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.3/aarch64-apple-darwin.gz"
        sha256 "7fb76077777185c866aabd5b32e852f75cee6e0edbd1390f10f08806f328d386"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.3/x86_64-unknown-linux-gnu.gz"
        sha256 "6ad9322bd74bcc76c89c7414141cfb3096860ddfc4669f94df49c437d0d1692c"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.3/aarch64-unknown-linux-gnu.gz"
        sha256 "dc9d80c4645dc1cfa24c1d8585307e718d5be2f6b6350170f6db8b4531625896"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        system "#{bin}/aws-mfa --version"
    end
end
