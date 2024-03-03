class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v0.0.1"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.1/ov_darwin_amd64.tar.gz"
        sha256 "05c842073bc73f8f1a7924b0a20674c6a254dce439a45d844e87212e42e01594"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.1/ov_darwin_arm64.tar.gz"
        sha256 "06cf158c27ab23c56186ef80a9e6b81d9d1d1eca28ba20c84ab94b7c775c7d4e"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.1/ov_linux_amd64.tar.gz"
        sha256 "1d03cf600d12af925b8dbbeec327cc7532be42165df6b5e1d50013c168e3f204"
    end

    def install
        bin.install "ov"
    end
end
