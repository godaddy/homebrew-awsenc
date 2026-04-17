class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.18"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.18/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "6b381d10fe219b1c03ca86a5cdfb7c46ce664492b8000deb61c9e995270a4e6d"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.18/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "a69e504892a0679111039db9114e495423ae5dda7af4414a07f52da2d9e146c5"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
