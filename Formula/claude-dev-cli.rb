class ClaudeDevCli < Formula
  include Language::Python::Virtualenv

  desc "AI-powered CLI tool for developers using Claude API with multi-API routing"
  homepage "https://github.com/thinmanj/claude-dev-cli"
  url "https://files.pythonhosted.org/packages/d8/fb/4f2dcd0735d85f47dee816f0815f86b598a8b01ddff5379d0c5849a3ad95/claude_dev_cli-0.12.1.tar.gz"
  sha256 "d55346f67ab9127eaf80527ae77f1f98ceb02f283c1b6b493adec0b8241e2b71"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cdc --help")
  end
end
