class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.10"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.10/x86_64-apple-darwin.gz"
        sha256 "d592ae17340bf1358844b14af8c59160cc6ac7c47080e8918f9914374ccd541a"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.10/aarch64-apple-darwin.gz"
        sha256 "69d64ab2ff442e80d1035ea19056d049853c2952714afdba5f62ed14eb8db9d9"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.10/x86_64-unknown-linux-gnu.gz"
        sha256 "2b976bfaf471030c5fec1fd88e02287ea29ea8726b943a744355f4af285e2b85"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.10/aarch64-unknown-linux-gnu.gz"
        sha256 "48810668980e9e5a5b664f747a238c59e7889a84ff748be917371fa523402b4f"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
