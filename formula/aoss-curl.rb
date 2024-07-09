class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.16"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.16/x86_64-apple-darwin.gz"
        sha256 "01ae6214178281b676f1070daa299ab06dec06663b63cabbf2b515fc8a8d823b"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.16/aarch64-apple-darwin.gz"
        sha256 "f9961e7f76e2ad32a19acc070d82e2f31421a82f87728d7dcba9d2253e64bbce"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.16/x86_64-unknown-linux-gnu.gz"
        sha256 "b9fd79dfecf16b46f4bda39d5576ad44f3ea4b560b790ec28fc59c2a0d1d5989"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.16/aarch64-unknown-linux-gnu.gz"
        sha256 "6909ef970ad3985ab53acc22201abaec6ac82bbbe510c3bb76147ce7fdbc257f"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
