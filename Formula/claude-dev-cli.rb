class ClaudeDevCli < Formula
  include Language::Python::Virtualenv

  desc "AI-powered CLI tool for developers using Claude API with multi-API routing"
  homepage "https://github.com/thinmanj/claude-dev-cli"
  url "https://files.pythonhosted.org/packages/3b/d7/a47c410aa10661aafccca7c0a3f810e37804b02e9d2e54d8cd9c72726529/claude_dev_cli-0.10.1.tar.gz"
  sha256 "3634efb6f75a08b37889bf87ed134ebc990e78778a39301b7207e44397b2ab7a"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cdc --help")
  end
end
