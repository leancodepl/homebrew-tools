class MobileTools < Formula
  desc "Useful program for mobile development."
  homepage "https://github.com/leancodepl/mobile-tools"
  url "https://github.com/leancodepl/mobile-tools.git", :branch => 'master'
  version "0.2.1"

  depends_on "jq"

  def install
    bin.install "bin/generate-keystore"
    bin.install "bin/poeditor-download"
    bin.install "bin/echo-changelog"
  end
end
