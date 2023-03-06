class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v0.1.21"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.21/x86_64-apple-darwin.gz"
        sha256 "fe4819daf13b2f3a08218f68d24327448e4edb2096da888ba083dc411d1f5880"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.21/aarch64-apple-darwin.gz"
        sha256 "7c241af4721c944a4bea1711994739297145b5020486d9dd66434ac3829fd2e4"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.21/x86_64-unknown-linux-gnu.gz"
        sha256 "2505cd2561bbf73bcfefd2be2e324c04d28ef2191b71551a253ecf43ae62eecc"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.21/aarch64-unknown-linux-gnu.gz"
        sha256 "888bbd762c92ca31ea49122f5f9c5c02b5b82122c44bb93d722e13fa33927b97"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        system "#{bin}/aoss-curl --version"
    end
end
