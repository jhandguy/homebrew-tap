class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v1.2.3"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.3/ov_darwin_amd64.tar.gz"
        sha256 "014423a4de6fdeb12b1f684404ef1de8a66c8aad43b131aac4a3662c93802395"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.3/ov_darwin_arm64.tar.gz"
        sha256 "96b0f9b281d69293a1ae25c69a513c9b245a118b4f7675367fe1b2840426abe6"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.3/ov_linux_amd64.tar.gz"
        sha256 "d971bcbf0c49ce8dd52efbbd0cbba499334ec3a8101898f3fd56065baa3e6377"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.3/ov_linux_arm64.tar.gz"
        sha256 "3ab447de51a36f04b6833db03e689fb5dd0930ea3221805ed231ac497aa62489"
    end

    def install
        bin.install "ov"
    end

    test do
        assert_match "ov version " + version, shell_output("#{bin}/ov --version")
    end
end
