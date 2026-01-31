class Glue < Formula
  desc "Dev-only UI annotation tool with source-linked element IDs"
  homepage "https://github.com/billwithwillow/glue"
  url "https://registry.npmjs.org/@glue/dev-cli/-/@glue/dev-cli-2.1.1.tgz"
  sha256 "850ff0d9b3488eea3240843fa8a4a0ec4c108df8255bba5e3087fa39e8c7d6d3"
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
