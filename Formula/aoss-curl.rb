class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.0"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.0/x86_64-apple-darwin.gz"
        sha256 "776ada6d4d107405baf2b99de52d195e6d00683f0e740403cd9d1382a5ef3741"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.0/aarch64-apple-darwin.gz"
        sha256 "730a878eb5aacea9ff8ca37c16b2ac91c6b59377443fbb61bb183d80a21ce232"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.0/x86_64-unknown-linux-gnu.gz"
        sha256 "d8b95a6877bbc8018ee5daeb6b00509e97f191a3378897c5c61859693a84d376"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.0/aarch64-unknown-linux-gnu.gz"
        sha256 "39651b48530b9708ee1c6c66f7dc22abb5b0d42598c5c76d46addb1dbd2a6517"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match version.to_s, shell_output("#{bin}/aoss-curl --version")
    end
end
