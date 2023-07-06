class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v0.3.4"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.4/x86_64-apple-darwin.gz"
        sha256 "1236924a84d54ca04532a60b10448039c64d919605442a4a233154054f052a45"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.4/aarch64-apple-darwin.gz"
        sha256 "656505d0de6192b92489c24ca3089cf7e78bae02f9989ad7831588e8d3c9e33b"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.4/x86_64-unknown-linux-gnu.gz"
        sha256 "324ebac531897c06dc507ea8fd5e69f477da6af2ae770b4e811c43b7d87734af"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.4/aarch64-unknown-linux-gnu.gz"
        sha256 "3fee4fc16818acbd42cfae10df9fc605eefc8fb292316fbfd9280091e9714d5b"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        system "#{bin}/aws-mfa --version"
    end
end
