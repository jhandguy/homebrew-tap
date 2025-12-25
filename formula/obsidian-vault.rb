class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v1.2.6"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.6/ov_darwin_amd64.tar.gz"
        sha256 "1cefeddc804818a87a2838b61d42102403a62825f39981e6da59fbf86f699f1c"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.6/ov_darwin_arm64.tar.gz"
        sha256 "94ce4e035faacc4c54b480205c7a8e4e0e39cb2e4531f5a1de386a0c6f370788"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.6/ov_linux_amd64.tar.gz"
        sha256 "dba2aa0d84b43b4416fa23327395d02730c372907cbc4db1ebeee1b79e55710b"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.6/ov_linux_arm64.tar.gz"
        sha256 "3455a1eb25483c3296aa7fa6f0cde7cff683649d344188c56e0207d7bc16b6f8"
    end

    def install
        bin.install "ov"
    end

    test do
        assert_match "ov version " + version, shell_output("#{bin}/ov --version")
    end
end
