class Cbeacon < Formula
  desc "Command-line program that transmits iBeacon advertisements"
  homepage "https://github.com/sgrastar24/cbeacon"
  url "https://github.com/sgrastar24/cbeacon/archive/0.2.0.tar.gz"
  sha256 "869006faba530c68e397b87833ed3b002acb180a12e348f51c98d64ad7eccad5"
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
