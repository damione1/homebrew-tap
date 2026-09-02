cask "souffle" do
  version "0.8.6"
  sha256 "6bd013fe1e093af067282ed17cee59faffc7aa8fd3ccfd5c04a34293ce27e326"

  url "https://github.com/damione1/souffle/releases/download/v#{version}/Souffle_#{version}_aarch64.dmg"
  name "Soufflé"
  desc "Private, local, on-device speech-to-text app"
  homepage "https://github.com/damione1/souffle"

  livecheck do
    url :url
    strategy :github_latest
  end

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
