class ReflectionsBin < Formula
  desc "A terminal-based work journaling app with calendar sync"
  homepage "https://github.com/Fizzizist/reflections"
  version "1.6.8"
  url "https://peter.vlasveld.info/releases/reflections/reflections-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "a4674193957c9d9d95f36336c2a59214a97b55f01d14a460980c54e57302aaf4"
  license "MIT"

  def install
    bin.install "reflect"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/reflect --help")
  end
end
