class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.16"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.16/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "bbe3843df3ee94fd71a553bc0f7f6fb712bb90b0e141b5d1fa47df919d84e9f0"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.16/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "04f393eed04333af6ba29e1a779e8cb68801e15e5779a346bf816d5dc3ec0269"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
