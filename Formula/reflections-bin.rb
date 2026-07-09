class ReflectionsBin < Formula
  desc "A terminal-based work journaling app with calendar sync"
  homepage "https://github.com/Fizzizist/reflections"
  version "1.6.9"
  url "https://peter.vlasveld.info/releases/reflections/reflections-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "cd52d09321e9c4f0532ea1d48029ab605e4884b2a14d7c795b628d3cc38e4732"
  license "MIT"

  def install
    bin.install "reflect"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/reflect --help")
  end
end
