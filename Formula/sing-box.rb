class sing_box < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org/"
  version "1.3.4"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/SagerNet/sing-box/releases/download/v#{version}/sing-box-#{version}-darwin-arm64.tar.gz"
    end
    on_intel do
      url "https://github.com/SagerNet/sing-box/releases/download/#{version}/sing-box-#{version}-darwin-amd64.tar.gz"
    end
  end
  on_linux do
      on_arm do
        url "https://github.com/SagerNet/sing-box/releases/download/v#{version}/sing-box-#{version}-linux-arm64.tar.gz"
      end
      on_intel do
        url "https://github.com/SagerNet/sing-box/releases/download/#{version}/sing-box-#{version}-linux-amd64.tar.gz"
      end
  end

  def install
    bin.install "sing-box"
  end

  test do
    system "#{bin}/sing-box", "version"
  end
end
