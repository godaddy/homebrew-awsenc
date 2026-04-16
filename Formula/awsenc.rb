class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.10"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.10/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "6d3566b7d24304361ef092a20e7e013c65b6cdafe3d2fa2d4be5f236c82f481b"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.10/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "56591d4b335cb7cb26a2bd59d4c0129a5de19833a593e1bac515a8f3e9524280"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
