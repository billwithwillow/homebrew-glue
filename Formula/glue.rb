class Glue < Formula
  desc "Dev-only UI annotation tool with source-linked element IDs"
  homepage "https://github.com/billwithwillow/glue"
  url "https://registry.npmjs.org/@getglue/dev-cli/-/@getglue/dev-cli-2.1.1.tgz"
  sha256 "62e79cb8e244b75f64faab10a11c17dd6ddf884ffe48cf00f6a60fbeb3dfecf5"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "2.1.1", shell_output("#{bin}/glue --version")
  end
end
