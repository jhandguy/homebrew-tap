class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.11"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.11/x86_64-apple-darwin.gz"
        sha256 "01538615db9711b2aff568e0446fbdd4aaaa7a32dd4d59d38f7a2deb8eda75fd"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.11/aarch64-apple-darwin.gz"
        sha256 "4177cb5ed161b60caa862830b20ce12e7b3a1875c21c3b6b0fba0c6731707d5c"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.11/x86_64-unknown-linux-gnu.gz"
        sha256 "a9aa7553bf03dc36da97639c96931dd037cdeeacbf704cbd7453884e424bd778"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.11/aarch64-unknown-linux-gnu.gz"
        sha256 "e7dcfa5f9d0108873e0cde50a6710185b27e5be11409c9ddb4aa0f57c17cf6a1"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
