class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/jgowdy/awsenc"
  version "0.1.0"
  license "MIT"

  on_arm do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.1.0/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "15cf85228db7dbce4efdbf68cd73b85a9d3ee2b7ae820974b4a9bed3573c5790"
  end

  on_intel do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.1.0/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "4a1b7f078565559901d2dd339864b76cb736a03b0f6e6b8d7456f1996270c495"
  end

  depends_on :macos

  def install
    bin.install "awsenc"
  end

  def caveats
    <<~EOS
      To configure awsenc with the AWS CLI:

        awsenc install --profile <name> \\
--organization <org>.okta.com \\
--application <app-url> \\
--role <role-arn>

      To add shell integration (export detection + awsenc-use):

        # bash: add to ~/.bashrc
        eval "\$(awsenc shell-init bash)"

        # zsh: add to ~/.zshrc
        eval "\$(awsenc shell-init zsh)"

        # fish: add to ~/.config/fish/config.fish
        awsenc shell-init fish | source
    EOS
  end

  test do
    assert_match "awsenc", shell_output("\#{bin}/awsenc --help")
  end
end
