class JiraPrompt < Formula
    desc "jira-prompt is a CLI to prompt Ollama using data from Jira issues."
    homepage "https://github.com/jhandguy/jira-prompt"
    version "v1.0.0"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/jira-prompt/releases/download/v1.0.0/jp_darwin_amd64.tar.gz"
        sha256 "50adbaee766ce4d72a549bcba34cda6c2c570e0229aa7848853864963e2e8e31"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/jira-prompt/releases/download/v1.0.0/jp_darwin_arm64.tar.gz"
        sha256 "d2e71fe919b0af4ed1a751707223d549628958686706fc52034f114e6bba9fa6"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/jira-prompt/releases/download/v1.0.0/jp_linux_amd64.tar.gz"
        sha256 "7a25549369b3541a953398e8241e5af7511f2396966f49496a34b9f2a55eca4d"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/jira-prompt/releases/download/v1.0.0/jp_linux_arm64.tar.gz"
        sha256 "6e2e0b26106396f779ea23114e92ad70657eaa3b80883a2d772c1e3118fd7671"
    end

    def install
        bin.install "jp"
    end

    test do
        assert_match "jp version " + version, shell_output("#{bin}/jp --version")
    end
end
