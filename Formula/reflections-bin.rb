class ReflectionsBin < Formula
  desc "A terminal-based work journaling app with calendar sync"
  homepage "https://github.com/Fizzizist/reflections"
  version "1.6.6"
  url "https://peter.vlasveld.info/releases/reflections/reflections-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "7bda837dc8bae6ee20103b1ba49094ff9757a803b9acb0288f289d1e55242e85"
  license "MIT"

  def install
    bin.install "reflect"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/reflect --help")
  end
end
