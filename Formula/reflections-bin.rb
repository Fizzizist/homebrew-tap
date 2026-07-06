class ReflectionsBin < Formula
  desc "A terminal-based work journaling app with calendar sync"
  homepage "https://github.com/Fizzizist/reflections"
  version "1.6.2"
  url "https://peter.vlasveld.info/releases/reflections/reflections-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "126c566fcf4e0e715067b873376744f7663b77ec11996759c9abea002ff72ae1"
  license "MIT"

  def install
    bin.install "reflect"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/reflect --help")
  end
end
