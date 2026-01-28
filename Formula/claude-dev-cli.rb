class ClaudeDevCli < Formula
  include Language::Python::Virtualenv

  desc "AI-powered CLI tool for developers using Claude API with multi-API routing"
  homepage "https://github.com/thinmanj/claude-dev-cli"
  url "https://files.pythonhosted.org/packages/1a/ae/54a8495953c15c63dd0a1849dfd0103f444b402a9b8362f892093c5274c3/claude_dev_cli-0.11.0.tar.gz"
  sha256 "1ae8061a23ba96dfc761b61a65eb2a33556042cc0134a765cc69967a345b4335"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cdc --help")
  end
end
