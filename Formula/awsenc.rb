class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/jgowdy/awsenc"
  version "0.3.2"
  license "MIT"

  on_arm do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.3.2/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "722defa5b496097a0c864a619d63b9538a5a278704e07247678afc4d7531ac48"
  end

  on_intel do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.3.2/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "3b11f43a1b0fe68da4f50ba69b1f975a25be63c70877894358f5d9fc82bae183"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
