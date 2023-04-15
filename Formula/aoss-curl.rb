class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v0.1.23"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.23/x86_64-apple-darwin.gz"
        sha256 "53a3a0658f59cdfc89b908de0cff3ed35ba3a043f8de9196bc09445b81557502"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.23/aarch64-apple-darwin.gz"
        sha256 "9e5a073ee4e05d20f880e4c347b727c00b43951484c7c1b5331c694588e573e4"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.23/x86_64-unknown-linux-gnu.gz"
        sha256 "5144dd45cf68f1a6a2fda6cc0282004de2a4e7c13c6bcf3b549e6cf2b4c8dc1e"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v0.1.23/aarch64-unknown-linux-gnu.gz"
        sha256 "bfe7af7ba77c0fcd8d69dd89af492a8eaffac143305739086bec5a0f8b251b11"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        system "#{bin}/aoss-curl --version"
    end
end
