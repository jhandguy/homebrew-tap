class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.4"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.4/x86_64-apple-darwin.gz"
        sha256 "519302c9b5975195f0caf4e5f6533a78ca96d7f29985c6218a1c1b4cd5577071"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.4/aarch64-apple-darwin.gz"
        sha256 "06ff77e857e0bf672899fc7c3175c5ece0e94ebe6ef1b73be21d0352e39decc6"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.4/x86_64-unknown-linux-gnu.gz"
        sha256 "28b99902352897fc6943b409ceaf9e84fcfee7cbc20ec12b7cc06de0c708355e"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.4/aarch64-unknown-linux-gnu.gz"
        sha256 "7d5232c464ac828b60b1a8b13d9c0a1ab26ee95dae32fe14e9bc6e85810d0c33"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
