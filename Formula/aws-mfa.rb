class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.8"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.8/x86_64-apple-darwin.gz"
        sha256 "0c6fe9c83a734303014c80a111881038c3de3ed99401c494fbe2c77100dd0262"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.8/aarch64-apple-darwin.gz"
        sha256 "c9a3f24675bc437dfbbcec88a587d11a05c409b011e087f457a9a6b847913f9c"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.8/x86_64-unknown-linux-gnu.gz"
        sha256 "3af95217b9b5f4907f939485b031d0ae7d485ef916cc3316f4fd53ea1ddafc93"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.8/aarch64-unknown-linux-gnu.gz"
        sha256 "48ac9162a4824d0e62fe23c2905f3590b44a79c26af8e6af14a42e6afa568f36"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
