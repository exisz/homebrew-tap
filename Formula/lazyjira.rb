class Lazyjira < Formula
  include Language::Python::Virtualenv

  desc "Zero-dependency CLI for Jira Cloud — like lazygit, but for Jira"
  homepage "https://github.com/gotexis/lazyjira"
  url "https://files.pythonhosted.org/packages/source/l/lazyjira/lazyjira-0.1.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "lazyjira", shell_output("#{bin}/lazyjira --version")
  end
end
