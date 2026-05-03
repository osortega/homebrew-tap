class Sili < Formula
  desc     "Codespace resource manager with auto-tunnel"
  homepage "https://github.com/osortega/sili"
  url      "https://github.com/osortega/sili/archive/refs/tags/v0.1.2.tar.gz"
  sha256   "a689b1e4d09ae8f48c4043b23bb2ecbca7c502538d24a931183ed5e5d3a46ca3"
  license  "MIT"

  depends_on "gh"

  def install
    libexec.install "bin", "lib"
    bin.install_symlink libexec/"bin/sili"
  end

  test do
    assert_match "sili", shell_output("#{bin}/sili help")
  end
end
