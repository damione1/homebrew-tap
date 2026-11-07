cask "souffle" do
  version "0.17.0"
  sha256 "abb110060dfdd2be0a52b7f0bf21bc651dd32a7feab3d5a19a456bb0e85ef2dd"

  url "https://github.com/damione1/souffle/releases/download/v#{version}/Souffle.dmg"
  name "Soufflé"
  desc "Private, local, on-device speech-to-text app"
  homepage "https://github.com/damione1/souffle"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Soufflé.app"

  zap trash: [
    "~/Library/Application Support/com.souffle.desktop",
    "~/Library/Caches/com.souffle.desktop",
    "~/Library/HTTPStorages/com.souffle.desktop",
    "~/Library/Preferences/com.souffle.desktop.plist",
    "~/Library/Saved Application State/com.souffle.desktop.savedState",
    "~/Library/WebKit/com.souffle.desktop",
  ]
end
