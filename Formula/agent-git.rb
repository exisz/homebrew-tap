class AgentGit < Formula
  desc "A git wrapper that tracks cloned repos and prevents duplicate clones"
  homepage "https://github.com/exisz/agent-git"
  url "https://github.com/exisz/agent-git/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ec857e935258abafbec542e46bbaa37d415cb6e15e52fc5e6361721addf2d645"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "agent-git", shell_output("#{bin}/agent-git --version")
  end
end
