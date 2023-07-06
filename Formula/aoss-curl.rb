class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v0.1.26"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.26/x86_64-apple-darwin.gz"
        sha256 "bd6710509a03520c603f5e80bdf2ca8d4d9623572a47539f02021927d5c61766"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.26/aarch64-apple-darwin.gz"
        sha256 "d7c43a76af41e7c9828941ac56b1ff42b36facb502df424582a541f86bb78c18"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.26/x86_64-unknown-linux-gnu.gz"
        sha256 "e54a2349e8b97d98bfbf9bbcb67dc89cc7fe77fe9236da36890a6d5fdad65f69"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.26/aarch64-unknown-linux-gnu.gz"
        sha256 "c91832a9eabb24346384f8fe73e5b62ae3af234beb0f67664cad986feec8be0d"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        system "#{bin}/aoss-curl --version"
    end
end
