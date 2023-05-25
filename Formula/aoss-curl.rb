class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v0.1.25"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.25/x86_64-apple-darwin.gz"
        sha256 "e98630464f6ab3af0167e9d01e1a06cd28a411fe9b4a78fb03b7bad3c75e9883"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.25/aarch64-apple-darwin.gz"
        sha256 "b9d138f81200ec53b20dfb35123cb6805394f29dbcfad68e4b9e862ea2cf324a"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.25/x86_64-unknown-linux-gnu.gz"
        sha256 "97587c332ab5ab272163d6ef9e1e429e76ea05308ac470531ca6ec27ebb1662c"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.25/aarch64-unknown-linux-gnu.gz"
        sha256 "0798628659ce3e9509b526acc583c24bb6b68cb94659152ce565a7020876a171"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        system "#{bin}/aoss-curl --version"
    end
end
