cask "glue-beta" do
  version "2.18.0-beta.11"
  sha256 "3a4cb9c0cdab447f58cc1d58541ab46f5bf8c6f2971cf2a44cc28a9dd04cafa7"

  url "https://github.com/billwithwillow/glue-releases/releases/download/v#{version}/Glue-Beta-#{version}-mac.zip"
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
