class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.8"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.8/x86_64-apple-darwin.gz"
        sha256 "fed68151d084465149032a77ea149c4df793e0950fdd127d3ab38e573986b9d6"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.8/aarch64-apple-darwin.gz"
        sha256 "496cfe9da27429d53226a58ceca68cb9dd2e0042637d997b97fa01ce2c3b0f34"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.8/x86_64-unknown-linux-gnu.gz"
        sha256 "ace4a9542e805485befb71ba9fa9c4594eba67635df1e330eb4681991367d316"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.8/aarch64-unknown-linux-gnu.gz"
        sha256 "513752425a875716da7c322f7615ba98ecb225dba0074a6851ae8403b0bc7e72"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
