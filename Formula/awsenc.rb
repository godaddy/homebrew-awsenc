class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/jgowdy/awsenc"
  version "0.3.0"
  license "MIT"

  on_arm do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.3.0/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "d311578af12dff7675355fd54b9e50001f98793e9e4acbcbb49eb641e7df22fd"
  end

  on_intel do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.3.0/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "2c82ea6b1263c81ad7113c9c18b837f7a16527fbdf2e32df934b8026a30def0b"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
