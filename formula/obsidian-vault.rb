class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v1.2.2"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.2/ov_darwin_amd64.tar.gz"
        sha256 "508d7f394579dec6161aba62e8a27c224be9a4f6fa81954d5735b88a648959bb"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.2/ov_darwin_arm64.tar.gz"
        sha256 "a2ec4496f0a9a6e2e783d42f8be08d1120b053b82ff3ae91cbeec8430c030e8f"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.2/ov_linux_amd64.tar.gz"
        sha256 "93232b5996d563e75d0c30bcc4c04ec1b9f547b2f3fb9dd3469504f1db2aed15"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.2/ov_linux_arm64.tar.gz"
        sha256 "6ce5ac782407668d39a9119edfe68082323f1fd7c596d91533e7acac2311177c"
    end

    def install
        bin.install "ov"
    end

    test do
        assert_match "ov version " + version, shell_output("#{bin}/ov --version")
    end
end
