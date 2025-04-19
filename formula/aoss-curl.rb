class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.24"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.24/x86_64-apple-darwin.gz"
        sha256 "03b658032f97634d907d0a1893e27e3e5f5624d66f9836a468cce92edc3ecce6"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.24/aarch64-apple-darwin.gz"
        sha256 "2861fbca81b1db67b356936205bad8c3ed7011bc06033abc6a0f991219d0bfba"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.24/x86_64-unknown-linux-gnu.gz"
        sha256 "0f4d4128e8a21e8e59cfeaa7b8901da5214358091af7a606a9a7559e0d65105c"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.24/aarch64-unknown-linux-gnu.gz"
        sha256 "85638d1f1e502ccc595a222beb28289bee04ae5530025118a2aa84f68e68a9ec"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
