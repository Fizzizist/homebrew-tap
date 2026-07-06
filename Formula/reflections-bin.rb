class ReflectionsBin < Formula
  desc "A terminal-based work journaling app with calendar sync"
  homepage "https://github.com/Fizzizist/reflections"
  version "1.6.3"
  url "https://peter.vlasveld.info/home/fizzizist/peter-vlasveld-info/html/releases/reflections/reflections-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "be7e4c4c4fb8938f090dcef9f424a6ba00e69c180661209b3d60c6482d60797e"
  license "MIT"

  def install
    bin.install "reflect"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/reflect --help")
  end
end
