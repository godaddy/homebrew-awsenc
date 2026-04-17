class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.17"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.17/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "772de8c3c0b4daa613c45bc04f8e26315b3de89987b37377c528dcf2fa927a5b"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.17/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "e750fc831cda35236c4de2b32f17dd6543f0cf3a11c40d64108cdf8ab00a961d"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
