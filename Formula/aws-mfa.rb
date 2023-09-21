class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.2"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.2/x86_64-apple-darwin.gz"
        sha256 "e9fdfedb468dfd390dde2079f036b8cc808cdaff9a93a7742124e0c069090c87"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.2/aarch64-apple-darwin.gz"
        sha256 "031e035e94d1e6da7f9c8ca162f26612a2b23c793637df48f7c37b30143f09e4"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.2/x86_64-unknown-linux-gnu.gz"
        sha256 "603606b780db402b363d37378d0d80be6edda678ba4ead3096777ce519ff9661"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.2/aarch64-unknown-linux-gnu.gz"
        sha256 "6d03b65d40117d3b633b6b0269a2e2677fbaa58265a975d50e3562b8a4c25ae8"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match version.to_s, shell_output("#{bin}/aws-mfa --version")
    end
end
