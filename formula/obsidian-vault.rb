class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v0.0.5"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.5/ov_darwin_amd64.tar.gz"
        sha256 "f390866b5e8082968283c76f2dd1477a238648a2110c80e32566ad75cb92a3c3"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.5/ov_darwin_arm64.tar.gz"
        sha256 "1341615d0c4073ab3a190763aa79730c824b634fab87b0d41eecac578cdd7a82"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.5/ov_linux_amd64.tar.gz"
        sha256 "92bc9414d73bd0c5e04c4bf907c31fc29ab91f43593ba47fec3bb782fe736622"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v0.0.5/ov_linux_arm64.tar.gz"
        sha256 "262a5ca568ce5ad01b529cceba4ac58bafa332b938ddb092bb07ccf40bf6bcbb"
    end

    def install
        bin.install "ov"
    end

    test do
        assert_match "ov version " + version, shell_output("#{bin}/ov --version")
    end
end
