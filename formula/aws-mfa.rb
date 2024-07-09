class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.16"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.16/x86_64-apple-darwin.gz"
        sha256 "a1f33bbbcd85c9a3196bfc65752caab39c468c40778cc42d694a7f56cc54b7ab"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.16/aarch64-apple-darwin.gz"
        sha256 "b22f45f3207a180d79318ae55e0b41e15ce21ceac09141c5bf561b9a171117d4"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.16/x86_64-unknown-linux-gnu.gz"
        sha256 "78fcbec27bae65e9b8df62c4ae076bbf44153550677bf9c66502180cbb93d0d3"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.16/aarch64-unknown-linux-gnu.gz"
        sha256 "0b6c6de211a03d100d8407698ab1b4147ff594dcd8d074962bc73c52cf29f67c"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
