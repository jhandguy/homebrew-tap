class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v0.0.2"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.2/ov_darwin_amd64.tar.gz"
        sha256 "c22c30bceafa1d572f17035ed05fd0b30c4a7d30bbae6138b444d0dc9c808da2"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.2/ov_darwin_arm64.tar.gz"
        sha256 "7b3a981935c87a5e10adddfb8f1c33b471fdf7fb4f49843e51bd524ddbba4e44"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.2/ov_linux_amd64.tar.gz"
        sha256 "1207993a63b488acfd14f486caa941b38ce134ed367736c114a3f57b500b8089"
    end

    def install
        bin.install "ov"
    end

    test do
        assert_match "ov version " + version, shell_output("#{bin}/ov --version")
    end
end
