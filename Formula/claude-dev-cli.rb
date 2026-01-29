class ClaudeDevCli < Formula
  include Language::Python::Virtualenv

  desc "AI-powered CLI tool for developers using Claude API with multi-API routing"
  homepage "https://github.com/thinmanj/claude-dev-cli"
  url "https://files.pythonhosted.org/packages/30/40/459f4a1e3623941189f06b7901ba28efd6773ecf5635935d70de759f3383/claude_dev_cli-0.12.0.tar.gz"
  sha256 "dbc2addadd1be3a13870cb871fa2c8c0c3e4c81c0a238e35b22d7a72d9c20fce"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cdc --help")
  end
end
