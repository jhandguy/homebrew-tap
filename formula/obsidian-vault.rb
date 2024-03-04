class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v0.0.4"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.4/ov_darwin_amd64.tar.gz"
        sha256 "e93b65d00425ec6a82816579d254888abe9d9bc43c7482d9194a17137e92bfd7"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.4/ov_darwin_arm64.tar.gz"
        sha256 "a482efe4c6f1bfbf162cde6c6cc94357936b1c7d5577dff8169bc6e7fe7fb91f"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.4/ov_linux_amd64.tar.gz"
        sha256 "2f5fcfe25a22ade0d67eefcc93d89d1b19bab754a608c16155bce9ee39c7ff0c"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.4/ov_linux_arm64.tar.gz"
        sha256 "f9d06340d250ac982aee25e95db4e63af83233533430a89040450d01bf4a5dbc"
    end

    def install
        bin.install "ov"
    end

    test do
        assert_match "ov version " + version, shell_output("#{bin}/ov --version")
    end
end
