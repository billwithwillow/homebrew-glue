cask "glue-beta" do
  version "2.18.0-beta.8"
  sha256 "8df03220e73ef3abf66abdfeb5e8f51a8bf566817b3baee2366826cde36efb28"

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
