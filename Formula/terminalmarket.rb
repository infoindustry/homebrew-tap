class Terminalmarket < Formula
  desc "Curated marketplace CLI for developers and founders"
  homepage "https://github.com/infoindustry/terminalmarket-cli"
  url "https://github.com/infoindustry/terminalmarket-cli/archive/refs/tags/v0.10.6.tar.gz"
  sha256 "64b9cf33cf7bc0cbb7f00644a920e04a792920d1ab58440c79e60a03fe6af1a5"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    output = shell_output("#{bin}/tm help")
    assert_match(/TerminalMarket/i, output)
  end
end