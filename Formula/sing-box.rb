class SingBox < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org/"
  url "https://github.com/SagerNet/sing-box.git", tag: "1.4.0"
  version "1.4.0"
  license "GPL-3.0-or-later"
  head "https://github.com/SagerNet/sing-box.git", branch: "main-next"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "sing-box"
  end

  test do
    system "#{bin}/sing-box", "version"
  end
end
