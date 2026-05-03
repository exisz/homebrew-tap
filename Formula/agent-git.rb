class AgentGit < Formula
  desc "A git wrapper that tracks cloned repos and prevents duplicate clones"
  homepage "https://github.com/exisz/agent-git"
  url "https://github.com/exisz/agent-git/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "2e6947723f48ce63be20ac23594651552e232e2939c81788746a96e214e061d1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "agent-git", shell_output("#{bin}/agent-git --version")
  end
end
