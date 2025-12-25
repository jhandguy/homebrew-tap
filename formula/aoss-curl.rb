class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.25"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.25/x86_64-apple-darwin.gz"
        sha256 "1b8658fb11dd4bb5383f628d97a4f82a9f0552f612f0a9b61afb636850ec67d2"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.25/aarch64-apple-darwin.gz"
        sha256 "1deaa0e30b938670feb1e7639c4b1ec1fc64b3af610de5f054a0718502bcb28e"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.25/x86_64-unknown-linux-gnu.gz"
        sha256 "c5781b0bbc350fe9ce1508481385fd14cd865bdb593f1c58594ea9be51671479"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.25/aarch64-unknown-linux-gnu.gz"
        sha256 "7c53e44e0c9b2d7c227b6efb040a1671406bd59e64d6ebd402599457e3b667c7"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
