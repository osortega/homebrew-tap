class Sili < Formula
  desc     "Codespace resource manager with auto-tunnel"
  homepage "https://github.com/osortega/sili"
  url      "https://github.com/osortega/sili/archive/refs/tags/v0.1.1.tar.gz"
  sha256   "9048434d3fe77551ea5a96cb70206335dafc34814089b6e9d85bcaa5f78885b7"
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
