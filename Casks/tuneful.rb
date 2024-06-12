cask "tuneful" do
  version "1.5.0"
  sha256 "a85a13a79bd9eeae7f227ceb355b3f60a3a855fba38c2f41bedfa54dcbdf519f"

  desc "Native macOS menu bar playback control app for Spotify and Apple Music"
  homepage "https://github.com/martinfekete10/Tuneful"
  url "https://github.com/martinfekete10/Tuneful/releases/download/v#{version}/Tuneful.dmg"

  depends_on macos: ">= :ventura"
  app "Tuneful.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
