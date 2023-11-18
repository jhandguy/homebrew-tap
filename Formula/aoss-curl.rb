class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.7"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.7/x86_64-apple-darwin.gz"
        sha256 "b45d2494e5b6bfb0ef9f10f01be4494badb6617bad06fa931419731c97e00406"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.7/aarch64-apple-darwin.gz"
        sha256 "430fc3313945b1031ba90d0efe62a0267186fe36ebc091f1b103d17edafbf4b3"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.7/x86_64-unknown-linux-gnu.gz"
        sha256 "5e21d3e860e3717351ea8628753ca1113b5a5959d9f58f930674c56fb6a6f2bb"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.7/aarch64-unknown-linux-gnu.gz"
        sha256 "d4c52163f8b6c34d51e60cb0f0b6ff3a1e0ee7a68e4b5064f3b5782561c96811"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
