cask "glue" do
  version "2.20.0"
  sha256 "6aa7ff7325e87058693a1fc44e04758bbc30d3c5ade31a6b63f2d55a78bdca99"

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
