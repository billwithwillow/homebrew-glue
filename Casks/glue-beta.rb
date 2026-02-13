cask "glue-beta" do
  version "2.17.2-beta.2"
  sha256 "5f44d591eccc79a3382c76231cece0108ff21a850909a032e53c250430e61902"

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
