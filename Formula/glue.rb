class Glue < Formula
  desc "Dev-only UI annotation tool with source-linked element IDs"
  homepage "https://github.com/billwithwillow/glue"
  url "https://registry.npmjs.org/@glue/dev-cli/-/@glue/dev-cli-2.1.0.tgz"
  sha256 "3ea0fc9a92784652804f547666a2be597e887b70f2af4c29bc1bcc8b3a3107ee"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "2.1.0", shell_output("#{bin}/glue --version")
  end
end
