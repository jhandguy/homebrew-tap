class JiraPrompt < Formula
    desc "jira-prompt is a CLI to prompt Ollama using data from Jira issues."
    homepage "https://github.com/jhandguy/jira-prompt"
    version "v1.0.2"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/jira-prompt/releases/download/v1.0.2/jp_darwin_amd64.tar.gz"
        sha256 "c94aab5ef5d4e579dfb068a190f52735b25ecbeba38b18698e0fb1e85cf32049"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/jira-prompt/releases/download/v1.0.2/jp_darwin_arm64.tar.gz"
        sha256 "1f55d2ad9de5af5fad46e881a840300a6921d32e2d05abeda3f2e3102f56be60"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/jira-prompt/releases/download/v1.0.2/jp_linux_amd64.tar.gz"
        sha256 "fea7c51603070a83c92c58fad9234414ffd4c837e11cedc41fa9f33145601385"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/jira-prompt/releases/download/v1.0.2/jp_linux_arm64.tar.gz"
        sha256 "f6bd1a230cb362632d9f50dab89428fb7d94c987f3786562a28429e094f32bc1"
    end

    def install
        bin.install "jp"
    end

    test do
        assert_match "jp version " + version, shell_output("#{bin}/jp --version")
    end
end
