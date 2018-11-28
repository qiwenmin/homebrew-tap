class Micronucleus < Formula
  desc "Strong emphasis on bootloader compactness ATTiny usb bootloader"
  homepage "https://github.com/micronucleus/micronucleus"
  url "https://github.com/micronucleus/micronucleus/archive/v2.03.tar.gz"
  version "2.03"
  sha256 "a56079018f5b7ce6e4916fc8f99ff5db5d888539f3622400009a79fa3beba2ce"
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
