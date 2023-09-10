class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.1"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.1/x86_64-apple-darwin.gz"
        sha256 "dd3e8cb3df60904f8e83c22c28cd330608fd692c3a74ccced1754d1574c2d003"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.1/aarch64-apple-darwin.gz"
        sha256 "c857e2e66e6ccf28e7cb646d45e7523fc6a3639e19b24a033fd7af41010e6919"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.1/x86_64-unknown-linux-gnu.gz"
        sha256 "9c1bbbda4ec081fafff442e7885dacad4697e92aa2eb2a45f7bb41db3d8946f8"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.1/aarch64-unknown-linux-gnu.gz"
        sha256 "705b1fe6a2a024cfbdc9913de3c1884be579dcd5011663b945f9ca293937673a"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match version.to_s, shell_output("#{bin}/aws-mfa --version")
    end
end
