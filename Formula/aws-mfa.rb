class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.3"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.3/x86_64-apple-darwin.gz"
        sha256 "76fa8b9a2b63aa199665585c451ff8879359eed1c7aafea7db2c013044aadcb9"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.3/aarch64-apple-darwin.gz"
        sha256 "98c502d47d99a851cd632b1e85500d2d590b53515ade52acdd8344916a573283"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.3/x86_64-unknown-linux-gnu.gz"
        sha256 "3cef82569b40be6b54d788186597ff392b5a185e8a93579104d377d4bbf7373e"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.3/aarch64-unknown-linux-gnu.gz"
        sha256 "3528c14c1c3bdacbff0bcd8f12a9132800aec69d1c9f8b151f8f8d335d1b1751"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match version.to_s, shell_output("#{bin}/aws-mfa --version")
    end
end
