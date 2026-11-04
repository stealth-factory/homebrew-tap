require "language/node"

class GhManagerCli < Formula
  desc "Interactive CLI to manage GitHub repositories"
  homepage "https://github.com/stealth-factory/gh-manager-cli"
  url "https://registry.npmjs.org/gh-manager-cli/-/gh-manager-cli-1.53.4.tgz"
  sha256 "5e33310d0a0757ac61d4f553feb22ccf63b51179b40336c25de39e066597b1c3"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gh-manager-cli --version")
  end
end
