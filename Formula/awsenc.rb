class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/jgowdy/awsenc"
  version "0.4.1"
  license "MIT"

  on_arm do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.4.1/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "f8820fba85a3cef61eb3db185447d35d2ff1212bd6a5042e871970984ba4729d"
  end

  on_intel do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.4.1/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "a65881e9cbe4ddc1763ab1795e192eb5c375380a00f68d46a14a5e824c42b71e"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
