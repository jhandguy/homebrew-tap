class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.6"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.6/x86_64-apple-darwin.gz"
        sha256 "62cae04fd2ef882a02f46201ba538960e3ca998d42e654dcb3d2975bf34a2ee0"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.6/aarch64-apple-darwin.gz"
        sha256 "f6cfc391d6cf9627b80c8a118e95e6700896303c3604fb984fba911283c796c6"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.6/x86_64-unknown-linux-gnu.gz"
        sha256 "98f07a591fb3b6977c0642f4052c86a0a4c7f9f14fcdc934b42826c17c913219"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.6/aarch64-unknown-linux-gnu.gz"
        sha256 "e488f2039dd753db83c6b7a8ad5daae965fb5cb0ddd04aef3704507e667e8505"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
