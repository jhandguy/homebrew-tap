class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v1.2.5"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.5/ov_darwin_amd64.tar.gz"
        sha256 "faaa4db23b0bbacee8b3e464b182708c16717b73b6a1ccd9d31d072de74417ad"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.5/ov_darwin_arm64.tar.gz"
        sha256 "5fa48381c146a81825108dd8c1b7f679c194708a7bb3c444668ac82bd707f7da"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.5/ov_linux_amd64.tar.gz"
        sha256 "d3ab570005c27f67320b0c7c7f44633d5834954ea298995932ff8f9f366cf9cd"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.5/ov_linux_arm64.tar.gz"
        sha256 "5dbf3eee1e40f42a53c4be915dd454a426359e7e21f479ec7996cb755baec90d"
    end

    def install
        bin.install "ov"
    end

    test do
        assert_match "ov version " + version, shell_output("#{bin}/ov --version")
    end
end
