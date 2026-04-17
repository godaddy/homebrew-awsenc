class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/godaddy/awsenc"
  version "0.4.15"
  license "MIT"

  on_arm do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.15/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "c5a17efb9b96d263f69fa387af9f7940602d7eb2e2437224c41d5a41bfe64a15"
  end

  on_intel do
    url "https://github.com/godaddy/awsenc/releases/download/v0.4.15/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "51857862c23e1039dadb8784a4610b19829cfdfc5124415753eb488effada620"
  end

  depends_on :macos

  def install
    bin.install "awsenc"    end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help 2>&1", 2)
  end
end
