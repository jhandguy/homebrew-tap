class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.15"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.15/x86_64-apple-darwin.gz"
        sha256 "d4b89b5d5ce6c4527e1a7ca17540599927256e7aa643a01eb6cafc6d782b5f2e"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.15/aarch64-apple-darwin.gz"
        sha256 "7dc3f747c1ec7ca32a72bdad39e3b40efa084738635f72cf43c9db7199eb4784"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.15/x86_64-unknown-linux-gnu.gz"
        sha256 "a7a9f09a99688ac2c315ffffc61013ac6948543d5a68bc30de44f2b15487e6b7"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.15/aarch64-unknown-linux-gnu.gz"
        sha256 "4103f676ff067bfb512cf89e6f76eb8e2faa49fcdd72d8c2d7a16b9e3d22a922"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
