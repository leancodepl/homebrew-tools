class MobileTools < Formula
  desc "Useful programs for mobile development"
  homepage "https://github.com/leancodepl/mobile-tools"
  url "https://github.com/leancodepl/mobile-tools/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "29531cf6be58b1bb2268704f28baf59bb23808e5342950e2faae6eb0d303b3ae"

  depends_on "jq"

  def install
    bin.install "bin/bs_android"
    bin.install "bin/bs_ios"
    bin.install "bin/echo_changelog"
    bin.install "bin/generate_keystore"
    bin.install "bin/is_prerelease"
    bin.install "bin/link_changelog"
  end

  test do
    system "command", "-v", "generate_keystore"

    assert_match(
      "true",
      shell_output(bin/"is_prerelease maestro-v0.6.9"),
    )

    assert_match(
      "false",
      shell_output(bin/"is_prerelease maestro-v1.2.3"),
    )

    assert_match(
      "https://pub.dev/packages/maestro/changelog#4203",
      shell_output(bin/"link_changelog maestro v4.2.0+3"),
    )
  end
end
