cask "simpleedit" do
  version "1.11.0"
  sha256 "54eb104faa14868098c195e3bc87af45a9052ec75b51c8c53754acd8981ab180"

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
