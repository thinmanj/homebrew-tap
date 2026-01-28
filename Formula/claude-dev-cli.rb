class ClaudeDevCli < Formula
  include Language::Python::Virtualenv

  desc "AI-powered CLI tool for developers using Claude API with multi-API routing"
  homepage "https://github.com/thinmanj/claude-dev-cli"
  url "https://files.pythonhosted.org/packages/aa/00/abed055d2c6a57f82a95f0e34680f2bf2a1965224bff991273a7c08ea70b/claude_dev_cli-0.8.5.tar.gz"
  sha256 "a83fc64459bdd90fd2882503e1bce90db4bff8f3531624abd4e9aa71c3ec2f07"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cdc --help")
  end
end
