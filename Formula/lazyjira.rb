class Lazyjira < Formula
  include Language::Python::Virtualenv

  desc "Zero-dependency CLI for Jira Cloud — like lazygit, but for Jira"
  homepage "https://github.com/gotexis/lazyjira"
  url "https://files.pythonhosted.org/packages/c4/42/ca9cbe5952d3abd26b3e14bbe03f38460b99625ab279cd75e47e4d179e72/lazyjira-0.1.0.tar.gz"
  sha256 "9482a2e6eac329d35c73b93b53f5c6c22f293c00be891cb5353b12a696884557"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "lazyjira", shell_output("#{bin}/lazyjira --version")
  end
end
