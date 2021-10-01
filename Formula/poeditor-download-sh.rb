class MobileTools < Formula
  desc "Useful program for mobile development."
  homepage "https://github.com/leancodepl/mobile-tools"
  url "https://github.com/leancodepl/mobile-tools.git", :branch => 'master'
  version "0.1.0"

  def install
    bin.install "bin/generate-keystores"
    bin.install "bin/poeditor-download"
  end
end
