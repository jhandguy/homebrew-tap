class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v0.1.17"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.17/x86_64-apple-darwin.gz"
        sha256 "03413c4e24bf5c439f91e38f738b2a1186a3cd97e4e1d5302c42730922dd46d5"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.17/aarch64-apple-darwin.gz"
        sha256 "f9a2b444cf2c0411f87fc1622802c46c6f278c4086a0976ff5084c3694f54d3c"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.17/x86_64-unknown-linux-gnu.gz"
        sha256 "71edb2a5570e2728d7777907e3a3219101136b936b8bbd24e79a1a3e9eaa4bc0"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.17/aarch64-unknown-linux-gnu.gz"
        sha256 "446f52512c78888d2da459b58710fadcfbb1613585f6e8b40e5da2c396ad0eb7"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        system "#{bin}/aoss-curl --help"
    end
end
