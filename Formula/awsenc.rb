class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/jgowdy/awsenc"
  version "0.3.1"
  license "MIT"

  on_arm do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.3.1/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "3100a83dba6b4590b6333bb17671ba663eae61b63536e77868f3a06bd9d2e782"
  end

  on_intel do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.3.1/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "f4aa9d94139f7993ff1f4ffe0984181472307f530ad0fd8b070da25db2a8891f"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
