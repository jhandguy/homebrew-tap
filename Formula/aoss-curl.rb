class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v0.1.19"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.19/x86_64-apple-darwin.gz"
        sha256 "d1d10dc6967e4714b457afbbb0b0ee7c9810f9e5ab7dacde08af7c9458c25705"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.19/aarch64-apple-darwin.gz"
        sha256 "52b1d3c09239f3264c28d794eca17c132d59c9eaf9b96a72b3f09b4f91c0e0d5"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.19/x86_64-unknown-linux-gnu.gz"
        sha256 "9db918ccf0a144db690a474def225aa0cf289e3f281fefee4fec64d16b0bd0c4"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.19/aarch64-unknown-linux-gnu.gz"
        sha256 "84edfb0eb8dd66c41a2a1c4afdd61ee2405bfaed7865ac212b1b2872e0456392"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        system "#{bin}/aoss-curl --help"
    end
end
