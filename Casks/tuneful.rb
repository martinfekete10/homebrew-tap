cask "tuneful" do
  version "1.6.0"
  sha256 "230e399133354310913a4f8bcda82ba91a92098f7f19560d0d32613388c08041"

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
