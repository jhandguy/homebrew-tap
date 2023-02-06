class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v0.1.18"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.18/x86_64-apple-darwin.gz"
        sha256 "e3467d50215cd34b365cf8fa970dbda3fbeca2b7105c3774b4fb57a991cf6819"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.18/aarch64-apple-darwin.gz"
        sha256 "ac8a1751d152e25c37b40b5751e20795c4f6fc46d9a59a4bb3796d9738dbb884"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.18/x86_64-unknown-linux-gnu.gz"
        sha256 "2f61ffd59d785dd15c9647ac126644d79857d2a8c8f8d3296728630556e53a0f"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.18/aarch64-unknown-linux-gnu.gz"
        sha256 "08d08ff70def7f94f7cb67211cb561e9efa97cd00d671f37ef2f6c53a29ebffa"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        system "#{bin}/aoss-curl --help"
    end
end
