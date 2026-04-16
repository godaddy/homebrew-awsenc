class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.8"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.8/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "01a706af2db0508a61e5b92054fe027cfa558161b47a2d945bb9464755c47ca5"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.8/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "6d46a1654721122fcb1118421a944148616bb76e27335eafd7c83a8ee79253bf"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
