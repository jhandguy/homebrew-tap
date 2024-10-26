class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.20"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.20/x86_64-apple-darwin.gz"
        sha256 "87e24f54baa66fd176c7b08e69412dceec84d93984ac1624b6ef7c018a77cff2"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.20/aarch64-apple-darwin.gz"
        sha256 "fa784e7cd529cf16b3d27f92a7eb7a63c4b92d966559cd7d68fd6bbba4096759"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.20/x86_64-unknown-linux-gnu.gz"
        sha256 "42ee5f588187dbce54645f01f0ac4c45561f05d4a37d05dfa944cb44a73099e5"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.20/aarch64-unknown-linux-gnu.gz"
        sha256 "33e6bd273d6500647ed9bba872f1c9ab40bf31ceae099955a67b27fe7e26e453"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
