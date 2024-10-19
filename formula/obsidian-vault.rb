class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v1.2.1"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.1/ov_darwin_amd64.tar.gz"
        sha256 "a8a45485ac490c069c3881b62293f314b84b9a82658441a43bf288dbabe222b3"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.1/ov_darwin_arm64.tar.gz"
        sha256 "a71348179fd90c0064643aa2f82af89bfd6f6d5fdee1735cee66db53aaa4241f"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.1/ov_linux_amd64.tar.gz"
        sha256 "2789f5de5c6e8a02197e5d3a119fac187de3b391959ecef9ef14e229c44c483e"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.1/ov_linux_arm64.tar.gz"
        sha256 "b3df8732207aeae46570684b9e03ecda24d02ed37ce80923f08b75dca3607642"
    end

    def install
        bin.install "ov"
    end

    test do
        assert_match "ov version " + version, shell_output("#{bin}/ov --version")
    end
end
