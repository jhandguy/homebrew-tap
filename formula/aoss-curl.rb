class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.14"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.14/x86_64-apple-darwin.gz"
        sha256 "cee086d34cca738abf96eef861b6f1afdd4206df8c06882e78338ec977455cb6"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.14/aarch64-apple-darwin.gz"
        sha256 "a8e93c2e19e9f20272118c771d8eb7e6cb6b755947c2b5a2e88cd2c6852a56ef"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.14/x86_64-unknown-linux-gnu.gz"
        sha256 "c9e11e83bbb24e6c0ec795ec7a93f1de7dd7f7a26f5d7feab9e91456da0ff57a"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.14/aarch64-unknown-linux-gnu.gz"
        sha256 "9ecbcaf1a0fc246d401b4222a377cc9addb1a574a622cfdd2e547e9c5844a96b"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
