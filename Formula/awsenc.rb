class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/jgowdy/awsenc"
  version "0.4.0"
  license "MIT"

  on_arm do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.4.0/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "011866762a30b10ff90075e070a90eb092e47e2876755bc68d39181a9c23c435"
  end

  on_intel do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.4.0/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "f3601fda24401a9db2aaed480dcfc66e00ab6c12c78d6bf9159fbb9573c13177"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
