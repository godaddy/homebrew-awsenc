class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.2"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.2/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "5daa4ad9fe145aa4fb47d9d59478ec55cf406f05abf920ce807e0f01c8d80078"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.2/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "bb183f363f43bbbfb65cf9f932bbd00a15beb4bff174d7d70847ed39b0e02ea5"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
