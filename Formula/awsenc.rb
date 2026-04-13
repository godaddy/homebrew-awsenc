class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.4"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.4/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "741e33c2789ba13cbdc5e341fe5ca020a1c274f8034f41df043bd730d0d0c224"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.4/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "d51c33087a62566779b3739224bcedde1aa954385ee8224aadec5371072428dc"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
