class Stm8flash < Formula
  desc "Program your stm8 devices with SWIM/stlinkv(1,2)"
  homepage "https://github.com/vdudouyt/stm8flash"
  url "https://github.com/vdudouyt/stm8flash.git", :revision => "3ad9500a04c21f08182439425b19d900c2315217"
  version "20170616-1.1-3ad9500"
  depends_on "libusb"
  depends_on "pkg-config" => :build
  def install
    system "make"
    mkdir_p bin
    cp buildpath/"stm8flash", bin
  end
  test do
    system "#{bin}/stm8flash", "-V"
  end
end
