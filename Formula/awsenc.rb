class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.19"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.19/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "9e8fcd77fda08c3750c00b5112bd9ece99b07c490b38a2fec9d0b7c567e38775"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.19/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "4f14e15dc9753783390866d45c0419413434625bb66ac90faf2ec459a5d13ff6"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
