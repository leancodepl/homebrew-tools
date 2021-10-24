class MobileTools < Formula
  desc "Useful programs for mobile development"
  homepage "https://github.com/leancodepl/mobile-tools"
  url "https://github.com/leancodepl/mobile-tools.git", branch: "master"
  version "0.2.2"

  depends_on "jq"

  def install
    bin.install "bin/generate-keystores"
    bin.install "bin/poeditor-download"
  end

  test do
    system "command", "-v", "generate-keystores"
    system "command", "-v", "poeditor-download"
  end
end
