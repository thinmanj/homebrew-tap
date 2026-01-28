class ClaudeDevCli < Formula
  include Language::Python::Virtualenv

  desc "AI-powered CLI tool for developers using Claude API with multi-API routing"
  homepage "https://github.com/thinmanj/claude-dev-cli"
  url "https://files.pythonhosted.org/packages/aa/20/afa52180ef23d41b3dbad756f27ecc9a3384534867cfc342c05418abc8be/claude_dev_cli-0.10.0.tar.gz"
  sha256 "6f9e4aff1cb36d0d5e8767e2ce2386f69696dee274058e4f4772bffd06f93e38"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cdc --help")
  end
end
