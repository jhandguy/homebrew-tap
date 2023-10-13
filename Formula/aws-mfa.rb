class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.5"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.5/x86_64-apple-darwin.gz"
        sha256 "24d5184e4164dc460bc18df07e4648414e71ae7b7c86471979e4fca61dc2a8b2"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.5/aarch64-apple-darwin.gz"
        sha256 "631a722fcfffcbb079bd5076b5c7c661e40d1ee04a020622b14a7e2875d636ac"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.5/x86_64-unknown-linux-gnu.gz"
        sha256 "a88bc7c1d223f83e3251bab0cc0af3cc2f8b427237e6a08efd39dec4bd6498a5"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.5/aarch64-unknown-linux-gnu.gz"
        sha256 "83595940ecbfb2d5b43e79a94e36b4c61af409b5341cea638d7457d2e722ff43"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
