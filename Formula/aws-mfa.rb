class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v0.2.15"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.15/x86_64-apple-darwin.gz"
        sha256 "c3e596dab4bd0f397ef06ee2f91095656f0c22db24740caa4a68860af87a7932"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.15/aarch64-apple-darwin.gz"
        sha256 "67a1680c42781bf28746b4dddbacd0a98cca8a88277a2d532059a8ef68912bcc"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.15/x86_64-unknown-linux-gnu.gz"
        sha256 "4ef3e75924b359221cbe51dc1e94a554778df200e8a9d2f5a132196f7372eea3"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.15/aarch64-unknown-linux-gnu.gz"
        sha256 "cb7fc3e1cdf8b765952d28370147dce345f5dd7d0799da41a6222736251bda37"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        system "#{bin}/aws-mfa --help"
    end
end
