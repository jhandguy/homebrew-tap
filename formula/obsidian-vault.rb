class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v1.2.0"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.0/ov_darwin_amd64.tar.gz"
        sha256 "cb663c1fe8b7b4c1b033c2fc7d7b55a6e6bd8a0e8736b81b0f8a111ba78845d7"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.0/ov_darwin_arm64.tar.gz"
        sha256 "ace93773b8e10d7acfe91090889c53e45f267b6b45180c176323fcd71debfa44"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.0/ov_linux_amd64.tar.gz"
        sha256 "08288be8aa4c2aac59565682bfdc32a91cc95801144cc7a5dc266796adae8869"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.0/ov_linux_arm64.tar.gz"
        sha256 "eff7722c82fdc3598042e07d90e50f47780fe0d33cd8a269f88a437fe13e561b"
    end

    def install
        bin.install "ov"
    end

    test do
        assert_match "ov version " + version, shell_output("#{bin}/ov --version")
    end
end
