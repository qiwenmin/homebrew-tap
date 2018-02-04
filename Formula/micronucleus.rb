class Micronucleus < Formula
  desc "Strong emphasis on bootloader compactness ATTiny usb bootloader"
  homepage "https://github.com/micronucleus/micronucleus"
  url "https://github.com/micronucleus/micronucleus/archive/v2.01.tar.gz"
  version "2.01-2.0a5"
  sha256 "ae07d04def2bcf64abdf70ac7a3ba217a03dbc5ae97f1a1bd8f4a4e95a193471"
  depends_on "libusb-compat"
  def install
    system "make", "-C", "commandline", "-j1"
    mkdir_p bin
    cp buildpath/"commandline/micronucleus", bin
  end
  test do
    system "#{bin}/micronucleus", "--help"
  end
end
