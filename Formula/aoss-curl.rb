class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v0.1.22"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.22/x86_64-apple-darwin.gz"
        sha256 "b79057a4e425ba662b1742b97a0eec9a4a292b4b1d85f5764174cfd3642cf4e5"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.22/aarch64-apple-darwin.gz"
        sha256 "fed253e79bb42f305d5ae04a1ceb41f0cb9b2262992c0cbc5592372da0144209"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.22/x86_64-unknown-linux-gnu.gz"
        sha256 "986a26dd9b88650ef6aae9fce28f3a9bc7a559bdb4344dd8856a4e424930b5af"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.22/aarch64-unknown-linux-gnu.gz"
        sha256 "cca20522cbe1a62e5fa78f5ab49b283fa4fb4fde0fa5dc80f8362880d736c6ab"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        system "#{bin}/aoss-curl --version"
    end
end
