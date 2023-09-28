class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.3"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.3/x86_64-apple-darwin.gz"
        sha256 "e0c5d118fff6a9250f4f8166d775f6d351923ef5d84326c421b194e2cca54760"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.3/aarch64-apple-darwin.gz"
        sha256 "66b0c7dcaa930a62036bb9c3efaca742f4acfe404c1e224a77e44563e88c5d88"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.3/x86_64-unknown-linux-gnu.gz"
        sha256 "6a1bf91b61a6588ce6c6ef5d840176709b7512326f31c7a85ec1e6d172cf9a36"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.3/aarch64-unknown-linux-gnu.gz"
        sha256 "8e469720776f7d8a75a8bb2afaeafd7c08e337ecadf96931d29ad8ec13397897"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match version.to_s, shell_output("#{bin}/aoss-curl --version")
    end
end
