class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v1.2.4"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.4/ov_darwin_amd64.tar.gz"
        sha256 "e6f064da295b81b53ea9f8c6251829bdf8224cbee07ae25a8271dd38a0cac67a"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.4/ov_darwin_arm64.tar.gz"
        sha256 "9b72076b82f54b2fdca3fc61533953a636f854a0b855d0ae4101f1feb1d31dad"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.4/ov_linux_amd64.tar.gz"
        sha256 "861386c58809a2f09b995e829bc2d0559fec52ea5812091016611cbb07b06bb2"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.2.4/ov_linux_arm64.tar.gz"
        sha256 "4945944d6d76f2da3811602ca5105c89039634b783fea2699f1b6e3ab08a8824"
    end

    def install
        bin.install "ov"
    end

    test do
        assert_match "ov version " + version, shell_output("#{bin}/ov --version")
    end
end
