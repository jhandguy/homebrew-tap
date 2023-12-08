class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.9"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.9/x86_64-apple-darwin.gz"
        sha256 "4f3c2262cc0e47f9a34a279147e23804fd1dcb44a3a534c46e0c177d6850c35f"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.9/aarch64-apple-darwin.gz"
        sha256 "f360c5eb4afeada71113f07e8ff8f725854209c182c20a778869d588bd635e94"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.9/x86_64-unknown-linux-gnu.gz"
        sha256 "3fd6f338d0dcd03389703ad031d9d68975a9a727f037d260c9a71fcf9471ddd1"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.9/aarch64-unknown-linux-gnu.gz"
        sha256 "1ca21cd5b4df742099d830db932fcb3cd9165bb7f243beacaa5cfd91b8c22685"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
