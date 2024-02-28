class AossCurl < Formula
    desc "Request to Amazon OpenSearch Service with SigV4 🔏"
    homepage "https://github.com/jhandguy/aoss-curl"
    version "v1.0.12"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.12/x86_64-apple-darwin.gz"
        sha256 "e4cf2665adfa19034a96a587c0e6db076c8b96618adb40a1abaee1a0317c9c35"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.12/aarch64-apple-darwin.gz"
        sha256 "fa4a10dba618a8efa8fe5beb40777ce390982126f0723d846b6574cb286bf1bd"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.12/x86_64-unknown-linux-gnu.gz"
        sha256 "3e3b82d91705dbc54ad9b7e28ede025797f97fd39903ef48beea2910bd6e3873"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aoss-curl/releases/download/v1.0.12/aarch64-unknown-linux-gnu.gz"
        sha256 "7547cfac7eecc3dad663b26874ca6708fc4f6884627740e73db5ebdeedca695e"
    end

    def install
        bin.install "aoss-curl"
    end

    test do
        assert_match "aoss-curl " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aoss-curl --version")
    end
end
