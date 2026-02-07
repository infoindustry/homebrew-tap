class Terminalmarket < Formula
  desc "TerminalMarket CLI — a curated marketplace for developers & founders"
  homepage "https://terminalmarket.app"
  url "https://github.com/infoindustry/terminalmarket-cli/archive/refs/tags/v0.10.6.tar.gz"
  sha256 "64b9cf33cf7bc0cbb7f00644a920e04a792920d1ab58440c79e60a03fe6af1a5"
  license "MIT"

  depends_on "node"

  def install
    # Install npm dependencies locally into the Cellar
    system "npm", "install", "--production", "--prefix", libexec, "."

    # Expose the CLI executable
    bin.install_symlink libexec/"bin/tm"
  end

  test do
    system "#{bin}/tm", "help"
  end
end

