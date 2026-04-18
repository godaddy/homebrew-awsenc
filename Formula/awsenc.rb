class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.20"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.20/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "689226f568b39b6b3f119fe68b021f1885143b5edfa592f2b606f14a041fbc16"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.20/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "52193f2a39e3501ed4112fb5c2068569d302d906bd504144485296b8b3c81b6f"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
