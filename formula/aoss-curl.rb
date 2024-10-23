class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.19"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.19/x86_64-apple-darwin.gz"
        sha256 "981fd6c9d0991214eb8a2feb5d9ba75b72913d4e3430a6f73698114af462b6ae"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.19/aarch64-apple-darwin.gz"
        sha256 "e7ad32f444e85f29ca92c1cab0f032636497cb073c3e81490b3737d0eedef27d"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.19/x86_64-unknown-linux-gnu.gz"
        sha256 "fa1fc69f8cf849280cf2d21be57164c2c41b98de2b9c81daa7a6a1cfd660dd54"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.19/aarch64-unknown-linux-gnu.gz"
        sha256 "f18d7c2e170c6b61007d53a63bbe03ab881274ce9b1600038e50d94c13927a40"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
