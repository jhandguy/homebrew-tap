class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.1"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.1/x86_64-apple-darwin.gz"
        sha256 "f4e1ee5339bcde511fc1a09e9bc4f4993485752c5a99163c301b540b4a190693"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.1/aarch64-apple-darwin.gz"
        sha256 "4acbd116e6742b1dd09caf21cc394df4c8bb0e32ab5d3f09132c62f482bbc0c1"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.1/x86_64-unknown-linux-gnu.gz"
        sha256 "e7b5630801b7b19ea23f069b0f7ca20e8646777885b06313b4eb8fd117e33c2f"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.1/aarch64-unknown-linux-gnu.gz"
        sha256 "c08e7543019d6b7c2826266d1e3e413d918e6429caedba8aa508dde63623dcb0"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match version.to_s, shell_output("#{bin}/aoss-curl --version")
    end
end
