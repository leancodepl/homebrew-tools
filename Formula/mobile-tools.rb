class MobileTools < Formula
  desc "Useful program for mobile development."
  homepage "https://github.com/leancodepl/mobile-tools"
  url "https://github.com/leancodepl/mobile-tools.git", :branch => 'master'
  version "0.2.1"

  depends_on "jq"

  def install
    bin.install "bin/echo_changelog"
    bin.install "bin/generate_keystore"
    bin.install "bin/is_prerelease"
    bin.install "bin/link_changelog"
    bin.install "bin/poeditor_download"
  end
end
