class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.7"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.7/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "5f5b90bb8adaf4359cfb90f9c6aab99708d69df9321b2acd319e2a897e5e3a0f"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.7/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "9ca4b53889c9ef5b1bda0b54ff48d7f1bcf0796346bffc3b3e67434b493f15dc"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
