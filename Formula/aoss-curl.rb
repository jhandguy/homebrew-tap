class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v0.1.24"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.24/x86_64-apple-darwin.gz"
        sha256 "4d906229ff7f44f4b30116274e8ddf24da2255d90999aac13bdae1c9d4e01969"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.24/aarch64-apple-darwin.gz"
        sha256 "f9fb9acea5fae9f27d91c81f99aaed63906ebe617a62a0c71f0dc03828ff397f"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.24/x86_64-unknown-linux-gnu.gz"
        sha256 "0fc3093979b3411054de2d947dde24e00a1e4b7eda23c5ec5977dd6b5af57d6f"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.24/aarch64-unknown-linux-gnu.gz"
        sha256 "a25506d2f3aaa1799834d1b9500b4371d9146817d43ee0d5e6bfc5e0b4697978"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        system "#{bin}/aoss-curl --version"
    end
end
