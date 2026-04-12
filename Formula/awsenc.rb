class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/jgowdy/awsenc"
  version "0.2.0"
  license "MIT"

  on_arm do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.2.0/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "c07129951350e84de383486e27ce942d8e76e0c04b2b0e83a69f339a76744b57"
  end

  on_intel do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.2.0/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "37126f1855ce947f1032f41cf0f18cb36d278430660d1b571896207425d14282"
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
