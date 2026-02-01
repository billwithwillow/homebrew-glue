cask "glue" do
  version "2.1.7"
  sha256 "f64ba2d9f2faced9e9dce7ab47dfc758ce6281d058423eb50bcc4d045a5ec916"

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
