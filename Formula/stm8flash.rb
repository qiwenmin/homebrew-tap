class Stm8flash < Formula
  desc "Program your stm8 devices with SWIM/stlinkv(1,2)"
  homepage "https://github.com/vdudouyt/stm8flash"
  url "https://github.com/vdudouyt/stm8flash.git", :revision => "11728cc64f180fe24e087dc0adccbc46291fe085"
  version "20170616-1.1-11728cc"
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
