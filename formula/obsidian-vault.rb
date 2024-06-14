class ObsidianVault < Formula
    desc "obsidian-vault is a CLI to backup your Obsidian notes in GitHub using AES-GCM-256 authenticated encryption."
    homepage "https://github.com/jhandguy/obsidian-vault"
    version "v1.0.0"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.0.0/ov_darwin_amd64.tar.gz"
        sha256 "bc6d9442df03a4ff8ceef512275e1a760680cb2c57d0598127229176fe80860d"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.0.0/ov_darwin_arm64.tar.gz"
        sha256 "43d5df664c2568a0822513cc9ff54c3b82bdd72a921f59ec88c54dc8a20f4119"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.0.0/ov_linux_amd64.tar.gz"
        sha256 "f4c9a1eba65fbe27d9ba7506377feb3dcf17f9b7a710effc2093ff17fa62c5b7"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/obsidian-vault/releases/download/v1.0.0/ov_linux_arm64.tar.gz"
        sha256 "14d5eec319f976f76db6511152632a13a514a8e40ac752731f911058098fa2b8"
    end

    def install
        bin.install "ov"
    end

    test do
        assert_match "ov version " + version, shell_output("#{bin}/ov --version")
    end
end
