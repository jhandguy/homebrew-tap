class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.19"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.19/x86_64-apple-darwin.gz"
        sha256 "a6d64e9bf5abdb0eb0c94aeac47411ec8b3a244a5aef356e8d8085673a082149"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.19/aarch64-apple-darwin.gz"
        sha256 "d0c8c971127241e5ae19154efc442f61d291c14c1516e4c83bc739cee848e4ad"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.19/x86_64-unknown-linux-gnu.gz"
        sha256 "09e6f11894a0b3cb36c712b1b0f3856a322ed78b30edef903a39204bbc76325e"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.19/aarch64-unknown-linux-gnu.gz"
        sha256 "a0b98d1c853bab1f704d7f93ed0d24cb96dd813bfbec0d101d66852bb4745065"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
