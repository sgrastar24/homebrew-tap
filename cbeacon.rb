class Cbeacon < Formula
  desc "Command-line program that transmits iBeacon advertisements"
  homepage "https://github.com/sgrastar24/cbeacon"
  url "https://github.com/sgrastar24/cbeacon/archive/0.1.0.tar.gz"
  sha256 "812c82727ed01788d34365c06e284647104e0947b15e055645ebe70aa9a2f9d3"
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
