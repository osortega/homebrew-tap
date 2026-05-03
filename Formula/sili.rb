class Sili < Formula
  desc     "Codespace resource manager with auto-tunnel"
  homepage "https://github.com/osortega/sili"
  url      "https://github.com/osortega/sili/archive/refs/tags/v0.1.0.tar.gz"
  sha256   "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
