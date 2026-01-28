class ClaudeDevCli < Formula
  include Language::Python::Virtualenv

  desc "AI-powered CLI tool for developers using Claude API with multi-API routing"
  homepage "https://github.com/thinmanj/claude-dev-cli"
  url "https://files.pythonhosted.org/packages/48/44/3180e9f6298a0b2af7410db79cf27b0c782e273792d9a9238b8954874379/claude_dev_cli-0.8.4.tar.gz"
  sha256 "e2ee391a3786e1cd603805d5cf14ba31aedabbea62ca1d99d20165b09fbba4c0"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cdc --help")
  end
end
