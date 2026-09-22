cask "welock" do
  version "1.2.3"
  sha256 "f3b8cc1459efb1fce3e342b2b558ec7469ac560c77fafa18566321bed61f100c"

  url "https://github.com/Omar-Hosny2702/WeLock/releases/download/V1.2.3/WeLock-v1.2.3.zip"
  name "WeLock"
  desc "Native macOS app-lock utility using system authentication"
  homepage "https://github.com/Omar-Hosny2702/WeLock"

  depends_on macos: :ventura

  app "WeLock.app"

  zap trash: [
    "~/Library/Preferences/com.omarhosny.WeLock.plist",
    "~/Library/Saved Application State/com.omarhosny.WeLock.savedState",
  ]
end
