class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.5"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.5/x86_64-apple-darwin.gz"
        sha256 "d4a87b8c2a0b94c6b7b9294bf19de857ad9cc2e6216ab8adf01ffbf69c863f78"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.5/aarch64-apple-darwin.gz"
        sha256 "587ebce6b0649f313a83e6a83b195d26a6639eb7ebd3e5e7945bd993aa485505"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.5/x86_64-unknown-linux-gnu.gz"
        sha256 "5d3dcbe95b436c2be297fb7280c30d7ffaae5c0803fe6041993bbe8bae44ccae"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.5/aarch64-unknown-linux-gnu.gz"
        sha256 "e771b200b84c5366265b8b69f3c040e20dac98ced735fcbade57564a6bb982d4"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
