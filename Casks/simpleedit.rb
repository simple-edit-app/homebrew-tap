cask "simpleedit" do
  version "1.26.0"
  sha256 "3d8011282d3bde69dcde14e09e5d2050e6f3d21caee34d2520b79237b00f25cf"

  url "https://github.com/simple-edit-app/simpleedit/releases/download/v#{version}/simpleedit-v#{version}-macos-aarch64.zip"
  name "SimpleEdit"
  desc "Fast, stable, cross-platform text editor with syntax highlighting"
  homepage "https://simple-edit-app.github.io/simpleedit/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "SimpleEdit.app"
  binary "#{appdir}/SimpleEdit.app/Contents/MacOS/simpleedit"

  zap trash: [
    "~/Library/Application Support/simpleedit",
    "~/Library/Preferences/app.simpleedit.SimpleEdit.plist",
    "~/Library/Saved Application State/app.simpleedit.SimpleEdit.savedState",
  ]
end
