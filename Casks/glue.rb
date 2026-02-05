cask "glue" do
  version "2.10.8"
  sha256 "3d0ec9956f0f1247582688a7903f5f5c928370a27c78764b09ed5cfa083bb10a"

  url "https://github.com/billwithwillow/glue-releases/releases/download/v#{version}/Glue-#{version}-mac.zip"
  name "Glue"
  desc "Dev-only UI annotation tool with source-linked element IDs"
  homepage "https://github.com/billwithwillow/glue"

  app "Glue.app"

  binary "#{appdir}/Glue.app/Contents/Resources/glue-cli", target: "glue"

  zap trash: [
    "~/Library/Application Support/Glue",
    "~/Library/Preferences/com.billwithwillow.glue.plist",
    "~/Library/Saved Application State/com.billwithwillow.glue.savedState",
  ]
end
