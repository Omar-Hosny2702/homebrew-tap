cask "welock" do
  version "1.2.2"
  sha256 "4db0c13b5152a6532292a6901d7966ab00deb433779df1e7c1470a0e4bccae8e"

  url "https://github.com/Omar-Hosny2702/WeLock/releases/download/1.2.2/WeLock-v1.2.2.zip"
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
