class ClaudeDevCli < Formula
  include Language::Python::Virtualenv

  desc "AI-powered CLI tool for developers using Claude API with multi-API routing"
  homepage "https://github.com/thinmanj/claude-dev-cli"
  url "https://files.pythonhosted.org/packages/7e/54/01fc267a25a609df3000aff81b4d29e99da330dffbe0934e45a9f1e6586a/claude_dev_cli-0.8.3.tar.gz"
  sha256 "b47a8aa09714d088d653518e851b24f588ced88713457ca789b4e48b5838c297"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cdc --help")
  end
end
