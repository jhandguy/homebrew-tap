class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v0.0.6"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.6/ov_darwin_amd64.tar.gz"
        sha256 "bc8ae4a2e693087c800051f6c189c26db4425d695b3e1ba946f7a694005efe0f"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.6/ov_darwin_arm64.tar.gz"
        sha256 "ff63855d9b11dd37a05d8f3a98f247fcc774c9c7be6b5b9ba6c533487e420ddc"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.6/ov_linux_amd64.tar.gz"
        sha256 "0af503ef5d264e987b2c07cce7b0cd38dfd608902bfb8475602b6f0d1d5abed2"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.6/ov_linux_arm64.tar.gz"
        sha256 "af5b7d95fad8c3594545a71b227b0c13b728ca634250bd372fb7f416c58ac4c9"
    end

    def install
        bin.install "ov"
    end

    test do
        assert_match "ov version " + version, shell_output("#{bin}/ov --version")
    end
end
