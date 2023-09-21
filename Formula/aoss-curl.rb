class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.2"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.2/x86_64-apple-darwin.gz"
        sha256 "3e4182ca986b124cf57f2dc0bdf6d5d26abece0348f54594aa176f4656bbc1fa"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.2/aarch64-apple-darwin.gz"
        sha256 "da528f2271aa8cce2cc51ea5e9ff3d30badf4284ebcc182b88ac6db7bcedce45"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.2/x86_64-unknown-linux-gnu.gz"
        sha256 "52dbb02f51a639b5e19094dbbdc266720a5e8627f4ca690a90b3d7ffe9167551"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.2/aarch64-unknown-linux-gnu.gz"
        sha256 "29daa2d16b09f67fe435f29cdd0ec2321f86d122baa1a61cf06bed7b7a894faa"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match version.to_s, shell_output("#{bin}/aoss-curl --version")
    end
end
