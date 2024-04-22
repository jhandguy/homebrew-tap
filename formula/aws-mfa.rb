class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.14"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.14/x86_64-apple-darwin.gz"
        sha256 "7552625de09c20bc4fe17b900f6a3f95e2d046f9cb1cfd77d92c60b268afb537"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.14/aarch64-apple-darwin.gz"
        sha256 "7df75f8599fee7d947631134bea8603ddcbe29edc5cab89317124efa70b2c5cf"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.14/x86_64-unknown-linux-gnu.gz"
        sha256 "1dc6e4fc0678543b3cbeecfb81cd1a98ddb121684b033a131dd31dcaa72be544"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.14/aarch64-unknown-linux-gnu.gz"
        sha256 "c6b629a1b7f27c1bb01a02b0e1e71a79fc3ada16e26da5ec1333151d3200ef1f"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
