class Stm8flash < Formula
  desc "Program your stm8 devices with SWIM/stlinkv(1,2)"
  homepage "https://github.com/vdudouyt/stm8flash"
  url "https://github.com/vdudouyt/stm8flash.git", :revision => "50a253df88afca556acf3130706fd525b5ec48f8"
  version "20170616-1.1-50a253d"
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
