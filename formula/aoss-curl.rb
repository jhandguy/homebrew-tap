class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.13"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.13/x86_64-apple-darwin.gz"
        sha256 "ef01df60add8fc3f44281bb52f39ed38a48d119d6a290380b46ad4b24fb7bc89"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.13/aarch64-apple-darwin.gz"
        sha256 "92be136a03462e65c1066ac3d819b23ca743559298bb2e625f291881b0041f02"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.13/x86_64-unknown-linux-gnu.gz"
        sha256 "94b67995ca3e7ff3750d16244049b047cc7cd5a6c7999f2a000246d070299990"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.13/aarch64-unknown-linux-gnu.gz"
        sha256 "06f4aea0dd503c639bfc2e5d5b3b84de500ca3a1c71b761d5406795b57458dfd"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
