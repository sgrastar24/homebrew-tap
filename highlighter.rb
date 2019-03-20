class Highlighter < Formula
  desc "Script to highlight the input text."
  homepage "https://github.com/sgrastar24/highlighter"
  url "https://github.com/sgrastar24/highlighter/archive/v1.0.tar.gz"
  sha256 "727c644d549e9a7bd20f6b786f0ee599b36bcd9daf7356ac7e483f581ef88b35"

  def install
    bin.install "hl"
  end

  test do
  end
end
