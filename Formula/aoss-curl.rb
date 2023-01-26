class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v0.1.16"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.16/x86_64-apple-darwin.gz"
        sha256 "a12714364fa794fbea2e3c458eb3e9cf608a747a0b338c7f8ca8289d280ada2e"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.16/aarch64-apple-darwin.gz"
        sha256 "902c7743998377d8cbf76802151eb13fdbd65718dad41d3a116b49845644499c"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.16/x86_64-unknown-linux-gnu.gz"
        sha256 "e4fb02af01ebfeeeea7de41aa0513cb74bfa1cf83f60b9c2036a33961f8e83fb"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.16/aarch64-unknown-linux-gnu.gz"
        sha256 "84d4941ee4c93f5bddadd6af0aabd001f8d35072d9e4e66703785fe562a6987c"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        system "#{bin}/aoss-curl --help"
    end
end
