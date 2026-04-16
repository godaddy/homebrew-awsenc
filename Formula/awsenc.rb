class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.9"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.9/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "c14f5c793ff86ba3b92e346dcf01f3c062d507e6fed844361ddbf1b15718abfe"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.9/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "b891e8b018c78fb3e5940fa3807c21f99123f39297dae94ccf0f21d17680d280"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
