cask "simpleedit" do
  version "1.5.0"
  sha256 "99a5f8d7554e798f708ecd6d76159d0442f7340c60edc01b145d0faf38baa15f"

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
