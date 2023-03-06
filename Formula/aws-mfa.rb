class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v0.2.16"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.16/x86_64-apple-darwin.gz"
        sha256 "3ec29afa1862c45820b71ae80acaf7eb557be56d5ba3c5fc948ec79390ee45e2"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.16/aarch64-apple-darwin.gz"
        sha256 "625a8e7c7df3271382526fb392de5496a7afdf1f50c92f20aa055a338ca5148f"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.16/x86_64-unknown-linux-gnu.gz"
        sha256 "27b2f6a2df339297c8d73eae1fdd85ceac43df3b0b50063f64241b984f3ffcfb"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.2.16/aarch64-unknown-linux-gnu.gz"
        sha256 "de9d8e2ddf5cd4017b2c22e8cacc9907040c54028d7467161eada738d4b537f2"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        system "#{bin}/aws-mfa --version"
    end
end
