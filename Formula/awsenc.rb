class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.13"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.13/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "5144714d0d57e9c17418236abff53c4ca60f434dfc4f4cb4fd8d74a410f0ed71"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.13/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "df1e437563126bea07ca2f22c2375fdc6b12209447adb4cc72f82c751869b80c"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
