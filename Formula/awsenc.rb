class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.14"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.14/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "b124f9bdcff2b063674ef028c90131203d731690c726fac5baa9af7ed56f61b2"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.14/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "871bf61339d6f4e1e32606607d4b0c211f728e370a9484c2237e1c6e5c5230a3"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
