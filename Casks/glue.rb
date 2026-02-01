cask "glue" do
  version "2.1.4"
  sha256 "22b4f129900886037c654260faca42b127dd1feedb48f7f004efa655d9656478"

  url "https://github.com/billwithwillow/glue-releases/releases/download/v#{version}/Glue-#{version}-mac.zip"
  name "Glue"
  desc "Dev-only UI annotation tool with source-linked element IDs"
  homepage "https://github.com/billwithwillow/glue"

  app "Glue.app"

  binary "#{appdir}/Glue.app/Contents/MacOS/glue-cli", target: "glue"

  zap trash: [
    "~/Library/Application Support/Glue",
    "~/Library/Preferences/com.billwithwillow.glue.plist",
    "~/Library/Saved Application State/com.billwithwillow.glue.savedState",
  ]
end
