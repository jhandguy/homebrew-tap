class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.17"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.17/x86_64-apple-darwin.gz"
        sha256 "d14cc17e17e49f2200fecee543e5e3dc2967c3db0a12400f4e0d19d266426ee4"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.17/aarch64-apple-darwin.gz"
        sha256 "4eafcef2cd7de77356123eba48a87e8d2da33e63c127413bdb9160bc7c7be14c"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.17/x86_64-unknown-linux-gnu.gz"
        sha256 "5ce942d7db3b1875c32eae4d370880abdb4e8e311930788a1f54f96bf648213a"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.17/aarch64-unknown-linux-gnu.gz"
        sha256 "f2e5b4facc2e5d72cc2f826dab74d4eaf8c8125cd0a4513c30526b21c781aeef"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
