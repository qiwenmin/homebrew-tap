class Micronucleus < Formula
  desc "Strong emphasis on bootloader compactness ATTiny usb bootloader"
  homepage "https://github.com/micronucleus/micronucleus"
  url "https://github.com/micronucleus/micronucleus/archive/2.04.tar.gz"
  version "2.04"
  sha256 "e09d4e427cde4dac43c3bac2e6f91903ae205263b1598beb8cef4f786692b506"
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
