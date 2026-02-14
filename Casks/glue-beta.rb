cask "glue-beta" do
  version "2.17.2-beta.6"
  sha256 "ffe5e5b2eab7b8243b07b75028c51fae0871c0c540010f932ac7e2eaacc2f8b3"

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
