class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.18"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.18/x86_64-apple-darwin.gz"
        sha256 "6d042fafdc8dc755965f218f1c0f0bb95b8e775dd8be645dcf9cb3019554df62"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.18/aarch64-apple-darwin.gz"
        sha256 "207dc87428351f3d2ceaa88eca04f9aea9ac4724f6ab42713d5f7b3fadea3517"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.18/x86_64-unknown-linux-gnu.gz"
        sha256 "2ad483e6a26470be57d77d0afc535a48f4bfb2fed951bcd3f6377e2cf74ab6ba"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.18/aarch64-unknown-linux-gnu.gz"
        sha256 "a2dd07d6c06a49b1917e8f8075a7a311db0d5294cd1b643dc4aa3e8d783b507f"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
