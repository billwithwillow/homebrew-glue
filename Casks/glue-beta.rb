cask "glue-beta" do
  version "2.17.1-beta.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/billwithwillow/glue-releases/releases/download/v#{version}/Glue%20Beta-#{version}-mac.zip"
  name "Glue Beta"
  desc "Dev-only UI annotation tool with source-linked element IDs (beta channel)"
  homepage "https://github.com/billwithwillow/glue"

  app "Glue Beta.app"

  binary "#{appdir}/Glue Beta.app/Contents/Resources/glue-cli", target: "glue-beta"

  zap trash: [
    "~/Library/Application Support/Glue Beta",
    "~/Library/Preferences/com.billwithwillow.glue-beta.plist",
    "~/Library/Saved Application State/com.billwithwillow.glue-beta.savedState",
  ]
end
