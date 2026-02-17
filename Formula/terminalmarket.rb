class Terminalmarket < Formula
  desc "Curated marketplace CLI for developers and founders"
  homepage "https://github.com/infoindustry/terminalmarket-cli"
  url "https://github.com/infoindustry/terminalmarket-cli/archive/refs/tags/v0.11.2.tar.gz"
  sha256 "981c921296ddb6662a8fe3a4904b04d2f98dfdef4d117b32120b8f9a5a0c4da3"
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
