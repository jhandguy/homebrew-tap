class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v0.0.3"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.3/ov_darwin_amd64.tar.gz"
        sha256 "cc6eb5fd753d7112ad3bcfd16fe43ea47e396ed94f81ee838176906666bae271"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.3/ov_darwin_arm64.tar.gz"
        sha256 "6ddddc302219b3770cd06c5a6dd47d4fa417b239393cc4775fc6c0e0237273bb"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.3/ov_linux_amd64.tar.gz"
        sha256 "e2456e182440dde61c67fd7cdc537fe0db3e828e09a0234802f9dee77b3e3de6"
    end

    def install
        bin.install "ov"
    end

    test do
        assert_match "ov version " + version, shell_output("#{bin}/ov --version")
    end
end
