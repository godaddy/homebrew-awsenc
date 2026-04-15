class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.6"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.6/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "5335e7bd7c11f5b7b1667c6395064c078d224d14aa9e71f1614156ec0f793fae"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.6/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "63068987c520954c62d0334c4c765dc414d3fe223ff9b8c5f5e568378b6e9fd4"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
