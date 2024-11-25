cask "tuneful" do
  version "v1.7.1"
  sha256 "a7a125211fbc9042aa6ff1be4521ffd0c4f52a08f744a7671b3848bde6504610"

  desc "Native macOS menu bar playback control app for Spotify and Apple Music"
  homepage "https://github.com/martinfekete10/Tuneful"
  url "https://github.com/martinfekete10/Tuneful/releases/download/#{version}/Tuneful.dmg"

  depends_on macos: ">= :ventura"
  app "Tuneful.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
