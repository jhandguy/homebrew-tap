class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.9"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.9/x86_64-apple-darwin.gz"
        sha256 "c664a0bcc2686c59c184ceb8ea64e00965ad83140502ed2179b662c7c7c63e8f"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.9/aarch64-apple-darwin.gz"
        sha256 "241662f2c80740a2961413752bb961dab5a4b54a9698ff836a8d69bb92d40fef"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.9/x86_64-unknown-linux-gnu.gz"
        sha256 "31106f1a874861ce4a690e66893353fabdc811382407e2f97f768391e2a0ec17"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.9/aarch64-unknown-linux-gnu.gz"
        sha256 "0e1ff62f6bb95ac1871b7869c958596ea349d5d1d057f4ef9cfecb64c6cfb069"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
