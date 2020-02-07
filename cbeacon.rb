class Cbeacon < Formula
  desc "Command-line program that transmits iBeacon advertisements"
  homepage "https://github.com/sgrastar24/cbeacon"
  url "https://github.com/sgrastar24/cbeacon/archive/0.4.1.tar.gz"
  sha256 "67900adb13300b72faba7f414a6aab8b91ed28fbd9a944cab3267ff9f2959bda"
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
