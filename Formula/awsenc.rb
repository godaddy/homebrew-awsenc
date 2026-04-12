class Awsenc < Formula
  desc "Hardware-backed AWS credential manager using Secure Enclave / TPM"
  homepage "https://github.com/jgowdy/awsenc"
  version "0.1.0"
  license "MIT"

  on_arm do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.1.0/awsenc-aarch64-apple-darwin.tar.gz"
    sha256 "d9867277feb0f088e07cd18abff0f1a0958555c7b820b8e47f076186fa6e78aa"
  end

  on_intel do
    url "https://github.com/jgowdy/awsenc/releases/download/v0.1.0/awsenc-x86_64-apple-darwin.tar.gz"
    sha256 "02212cd87a574ca69fad6102ef6e517ef865dfc1c58ecea83c0d83877393bdd8"
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
