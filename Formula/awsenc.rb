class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.11"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.11/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "a46136cd6a0475216ae1f8c3d3739f7c75686b6900ab655a67fd15c13472735b"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.11/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "9ca01c0d4e9a292b11c2d0092afc0b0666cd4bac4aefbfd6a9420c5d6db7f288"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
