class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.22"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.22/x86_64-apple-darwin.gz"
        sha256 "55fe72a9fdaf011de740521592c2f765aeb0a296d5e23f67ff49fc84eb7ceec1"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.22/aarch64-apple-darwin.gz"
        sha256 "089213c9a45b671468470e4d98a353b043b08725304fc7b85af447584543119b"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.22/x86_64-unknown-linux-gnu.gz"
        sha256 "1b3d38a538d73b1d8888fbf1ca1bfd06676178fb4d04686dfc291794f55b2990"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.22/aarch64-unknown-linux-gnu.gz"
        sha256 "8c95d7c0b97901c4ff080acfca83e214116c97f8c0da6f623028cfce5862b920"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
