class ClipImage < Formula
  desc "Save clipboard images to a file (cross-platform)"
  homepage "https://github.com/jadnohra/clip-image"
  url "https://github.com/jadnohra/clip-image/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "" # Will be filled after first release
  license "MIT"

  depends_on "python@3"

  def install
    bin.install "clip-image"
  end

  test do
    system "#{bin}/clip-image", "--help" rescue nil
  end
end
