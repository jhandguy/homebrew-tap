class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v1.1.0"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.1.0/ov_darwin_amd64.tar.gz"
        sha256 "6c873cbc0093ed67ffc98764d2646262244d4abcb8caa2d7a11c6e304de1c3ef"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.1.0/ov_darwin_arm64.tar.gz"
        sha256 "43548d2559c0ce0b720f16808eeb4847267d70e4d27e48fa5b548a03997be9dd"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.1.0/ov_linux_amd64.tar.gz"
        sha256 "38c74697d15b0cf5464eba69282ae18764e7c0ef1cc8f85be5aa7748b2ce13af"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.1.0/ov_linux_arm64.tar.gz"
        sha256 "cb251f1a412912f788ac6fe71d161f379029853e328b50c61499ed88595bcd6e"
    end

    def install
        bin.install "ov"
    end

    test do
        assert_match "ov version " + version, shell_output("#{bin}/ov --version")
    end
end
