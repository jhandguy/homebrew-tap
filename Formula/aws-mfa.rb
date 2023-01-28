class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v0.2.13"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.13/x86_64-apple-darwin.gz"
        sha256 "225bd4572b08d27f83d6691cdd4276032a053775252c2445b040b60355b13f68"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.13/aarch64-apple-darwin.gz"
        sha256 "4170652ce7ea5e2fe4d5ed5cdd8ec029724cf9f7517ef6893be48c0b6e7ecd79"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.13/x86_64-unknown-linux-gnu.gz"
        sha256 "260c3fa3aa929971234d535d505eb6a4af4456561bc52cd90128cac76a05fc9e"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.13/aarch64-unknown-linux-gnu.gz"
        sha256 "c1a0896ec9b933d4b6619d9ed67ad137b51c2c5be62a59643fc5b2a8dc0370a5"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        system "#{bin}/aws-mfa --help"
    end
end
