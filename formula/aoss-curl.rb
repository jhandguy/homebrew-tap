class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.23"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.23/x86_64-apple-darwin.gz"
        sha256 "c7c544fb5b6514e26a4638527fea305159eecb265aaad7d68e9f76f2c3d5f1c9"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.23/aarch64-apple-darwin.gz"
        sha256 "3b94050d895e02b0da6402c2a785a96e95f90f7b3d5fd57fad5d60b60af8d215"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.23/x86_64-unknown-linux-gnu.gz"
        sha256 "731e87540332b2797effe6d51e3f709faffd7d95b7dc37c56860b345adad44a9"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.23/aarch64-unknown-linux-gnu.gz"
        sha256 "0dc20b1fa0bcad889982acf83130d726146a6bbedd0c47577cb422e1e64e8138"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
