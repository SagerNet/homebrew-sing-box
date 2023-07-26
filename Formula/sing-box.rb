class SingBox < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org/"
  version "1.3.4"
  license "GPL-3.0-or-later"
  on_macos do
    on_arm do
      url "https://github.com/SagerNet/sing-box/releases/download/v#{version}/sing-box-#{version}-darwin-arm64.tar.gz"
      sha256 "66a6a25e6c8efb1b8f2daf849cc8fe1c5e7f5c2240c2a698e8a6eb73670a0e63"
    end
    on_intel do
      url "https://github.com/SagerNet/sing-box/releases/download/v#{version}/sing-box-#{version}-darwin-amd64.tar.gz"
      sha256 "50f610d7ab28ca964eb2e9785ca239a135b6f866474ab6bbb4bdc0e05b479aa1"
    end
  end
  on_linux do
      on_arm do
        url "https://github.com/SagerNet/sing-box/releases/download/v#{version}/sing-box-#{version}-linux-arm64.tar.gz"
        sha256 "1e6bfa2c48e7fc720d6d5bb66dd87c69bf7ae8ef511175ebdc599d1925016cf0"

      end
      on_intel do
        url "https://github.com/SagerNet/sing-box/releases/download/#{version}/sing-box-#{version}-linux-amd64.tar.gz"
        sha256 "1df8e094ce9ef558257ebe48ea225e5d03f955289cba15b232652c5d437823d3"
      end
  end

  def install
    bin.install "sing-box"
  end

  test do
    system "#{bin}/sing-box", "version"
  end
end
