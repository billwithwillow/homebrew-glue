cask "glue" do
  version "2.17.1"
  sha256 "5b2feea42ca26952e942a812678349f28e99bf3298865b6da1c59a73cc0372d2"

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
