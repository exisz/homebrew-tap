class Bitgit < Formula
  desc "Git + Bitbucket DC CLI with a hook-based plugin system"
  homepage "https://exisz.github.io/bitgit/"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/exisz/bitgit/releases/download/v0.1.0/bitgit_Darwin_arm64.tar.gz"
      sha256 "f4cdf28860e53c8aba8d123a11ed43ef82f85292d2f3ca377735ef2cdc766ab9"
    else
      url "https://github.com/exisz/bitgit/releases/download/v0.1.0/bitgit_Darwin_x86_64.tar.gz"
      sha256 "eecfc94a8b222216f9212854f6f9de441035956ffd0cfc7ed8e835932af03fd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/exisz/bitgit/releases/download/v0.1.0/bitgit_Linux_arm64.tar.gz"
      sha256 "ae8cb35e6193fe9e7780195c9ad59e0d3f53d9da9c7836a9811ca889d37f6ed5"
    else
      url "https://github.com/exisz/bitgit/releases/download/v0.1.0/bitgit_Linux_x86_64.tar.gz"
      sha256 "3fddb2b62414b948288379503eb5759ddb8c3e7be1087b767af0f89c3c495388"
    end
  end

  def install
    bin.install "bitgit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bitgit --version")
  end
end
