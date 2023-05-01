class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v0.3.2"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.2/x86_64-apple-darwin.gz"
        sha256 "2b0400316fb63e7d210012c6be5e14fcf1582a40b53b5f5e09d7fcac17ac3e2e"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.2/aarch64-apple-darwin.gz"
        sha256 "b96c870288b561f84c3735b9cbd90926006484b391ca7a07cebbbfda8ab7d007"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.2/x86_64-unknown-linux-gnu.gz"
        sha256 "12e1ba16f3df3d7e9041f44ad4a1f2c6b251d3f41b142afa800aff57ccd8cf38"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v0.3.2/aarch64-unknown-linux-gnu.gz"
        sha256 "b181f4c7bfefa733fe5e35ec943596980eb96ffd299066017c94fa051ebe228a"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        system "#{bin}/aws-mfa --version"
    end
end
