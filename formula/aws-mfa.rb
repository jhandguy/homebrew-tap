class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.12"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.12/x86_64-apple-darwin.gz"
        sha256 "83aee6e9552ec3d53327fabe99390ca274aaca5d4094cc1d5bf86eeef281cbad"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.12/aarch64-apple-darwin.gz"
        sha256 "770e1051d28d58559eebd8d431ffea91470ada07cfa68f6b5e7908e328b1db81"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.12/x86_64-unknown-linux-gnu.gz"
        sha256 "7b0dab40d3dcaf94f7adec82b39068091a1ccad840d715179afa15ed839191e5"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.12/aarch64-unknown-linux-gnu.gz"
        sha256 "976d08995354ca5f891ac057ef9d26ee215b0820004413cfac4f521a99629c1f"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
