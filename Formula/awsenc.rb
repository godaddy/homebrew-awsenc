class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.5"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.5/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "6efe664fb10a8c05b98c53998ad41916cc6c8835b2bf1c59f87d63173d771a0b"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.5/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "c034b15c2b64f6028bafcea0bab845782857dcf91a437ee06fe4a609a30c4c74"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
