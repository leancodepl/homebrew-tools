class MobileTools < Formula
  desc "Small but useful program for mobile development"
  homepage "https://github.com/leancodepl/mobile-tools"
  url "https://github.com/leancodepl/mobile-tools.git", :branch => 'master'
  version "1.2.0"

  def install
    bin.install "bin/bs_android"
    bin.install "bin/bs_ios"
    bin.install "bin/echo_changelog"
    bin.install "bin/generate_keystore"
    bin.install "bin/is_prerelease"
    bin.install "bin/link_changelog"
  end
end
