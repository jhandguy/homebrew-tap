class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v0.1.20"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.20/x86_64-apple-darwin.gz"
        sha256 "3eb87d213bc670f657730a14241a79606f1a4b22468b7c79080510a7c04d2e6c"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.20/aarch64-apple-darwin.gz"
        sha256 "43bf14debaa85f943f5478205ea6dc5ad31ecd441adaee0bd131969676d696a3"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.20/x86_64-unknown-linux-gnu.gz"
        sha256 "3f71bde15ea9e601067a4991b08094e85970fcc98b6aaefeca0503f04782bd4f"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.20/aarch64-unknown-linux-gnu.gz"
        sha256 "14ce91ae1e327a1be390d13296a40a9e5d3f12bb489b18a80a8256c3eb7752ca"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        system "#{bin}/aoss-curl --help"
    end
end
