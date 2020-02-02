class Cbeacon < Formula
  desc "Command-line program that transmits iBeacon advertisements"
  homepage "https://github.com/sgrastar24/cbeacon"
  url "https://github.com/sgrastar24/cbeacon/archive/0.4.0.tar.gz"
  sha256 "9e6b587a6966674de6a9d44ee590f525bdb268358e102bb241be713565504791"
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
