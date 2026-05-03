class Sili < Formula
  desc     "Codespace resource manager with auto-tunnel"
  homepage "https://github.com/osortega/sili"
  url      "https://github.com/osortega/sili/archive/refs/tags/v0.1.0.tar.gz"
  sha256   "fa642b7a3770bd67a8bc64a9295d83f3e2e33a1bc164ae8822f2b183bd832af4"
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
