class AwsMfa < Formula
    desc "Authenticate to AWS with MFA 🔐"
    homepage "https://github.com/jhandguy/aws-mfa"
    version "v1.0.23"
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.23/x86_64-apple-darwin.gz"
        sha256 "c806c3a37d799d94c7477f60378032570ddf4c60286daf985b84f03481e7999a"
    end

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.23/aarch64-apple-darwin.gz"
        sha256 "2928ea49e780a6cf8575fe802c0cae4db880f0b52305a060e09e21e2c297be7a"
    end

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.23/x86_64-unknown-linux-gnu.gz"
        sha256 "fa606f220d1a61066fef00e3ecbee4bc82494bd01a7fd93b5a342bd1904950dc"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/jhandguy/aws-mfa/releases/download/v1.0.23/aarch64-unknown-linux-gnu.gz"
        sha256 "e78abe3e278b7c167d7c22dba276e65a720b58c5408f2ae221d358a4da00c43e"
    end

    def install
        bin.install "aws-mfa"
    end

    test do
        assert_match "aws-mfa " + version.to_s.delete_prefix("v"), shell_output("#{bin}/aws-mfa --version")
    end
end
