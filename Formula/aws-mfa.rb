class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v0.2.14"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.14/x86_64-apple-darwin.gz"
        sha256 "935c212ee9f5d2cfb18e551559be81f5d1c85d07827b9cd38d4504e94196db23"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.14/aarch64-apple-darwin.gz"
        sha256 "9ebf54606e834299340240a48a9016d285b217fd8e4d51d1849db8bc786c3346"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.14/x86_64-unknown-linux-gnu.gz"
        sha256 "b1262a32c6ad212ad88d5eed1a3c242472a4b0cbb344b3c8df700170d170db77"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.14/aarch64-unknown-linux-gnu.gz"
        sha256 "444569333a1321161fb78074ca67e531887106ce206bcd60157f25bf4e3bbe74"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        system "#{bin}/aws-mfa --help"
    end
end
