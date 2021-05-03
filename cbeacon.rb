class Cbeacon < Formula
  desc "Command-line program that transmits iBeacon advertisements"
  homepage "https://github.com/sgrastar24/cbeacon"
  url "https://github.com/sgrastar24/cbeacon/archive/refs/tags/0.4.2.tar.gz"
  sha256 "90dd98c231cb53cde71bfa3224178a517a334291ba41e9877fa51bcfb7010787"
  depends_on :macos => :sierra

  def install
    man1.mkpath
    system "make", "install", "PREFIX=#{prefix}",
                              "MAN1=#{man1}"
  end

  test do
    assert_equal "cbeacon: version #{version}",
                 shell_output("#{bin}/cbeacon --version").strip
  end
end
