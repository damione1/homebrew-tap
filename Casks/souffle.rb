cask "souffle" do
  version "0.8.8"
  sha256 "a2964b82e46e57dafe4b1e7cc0234eef88be436b601a85adb9fd93e8c054dfcc"

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
