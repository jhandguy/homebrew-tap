class JiraPrompt < Formula
    desc "jira-prompt is a CLI to prompt Ollama using data from Jira issues."
    homepage "https://github.com/jhandguy/jira-prompt"
    version "v1.0.1"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/jira-prompt/releases/download/v1.0.1/jp_darwin_amd64.tar.gz"
        sha256 "d57877ef04f5c9493d8398e991fc37bcc0c023598774b20d006cf045d64de60b"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/jira-prompt/releases/download/v1.0.1/jp_darwin_arm64.tar.gz"
        sha256 "83d654a8a592704d039548c3e08567bb1977c5bcc43d77f49c7d4b301c0b2b9b"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/jira-prompt/releases/download/v1.0.1/jp_linux_amd64.tar.gz"
        sha256 "2dac2c1a934c3021fca6c48bd2c6f6b0fbd16e7882c91584f212c46766198b81"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/jira-prompt/releases/download/v1.0.1/jp_linux_arm64.tar.gz"
        sha256 "da9b1c642a506ec0ccb1970f6b8d052d007d4d21a1455c8427748052687a8f96"
    end

    def install
        bin.install "jp"
    end

    test do
        assert_match "jp version " + version, shell_output("#{bin}/jp --version")
    end
end
