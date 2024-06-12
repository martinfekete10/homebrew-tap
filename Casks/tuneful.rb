cask "tuneful" do
  sha256 "f360663290d0aeb01ab23112c508819f1ab7931b2ae196a8472a1433ad41cfd8"
  version "1.2.0"

  desc "Native macOS menu bar playback control app for Spotify and Apple Music"
  homepage "https://github.com/martinfekete10/Tuneful"
  url "https://github.com/martinfekete10/Tuneful/releases/download/v1.2.0/Tuneful.tar.gz"

  depends_on macos: ">= :ventura"
  app "Tuneful.app"

  # livecheck do
  #   url "https://github.com/martinfekete10/Tuneful/releases/latest"
  #   strategy :page_match
  #   regex(%r{v?(\d+(?:\.\d+)+)\s*-\s*.*}i)
  # end

  # livecheck do
  #   url :stable
  #   regex(/^v?(\d+(?:\.\d+)+)*$/i)
  #   strategy :github_releases do |json, regex|
  #     json.map do |release|
  #       next if release["draft"] || release["prerelease"]
  
  #       match = release["tag_name"]&.match(regex)
  #       next if match.blank?
  
  #       match[1]
  #     end
  #   end
  # end

  livecheck do
    url :url
    strategy :github_latest
  end
end
