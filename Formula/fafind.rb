class Fafind < Formula
  desc "Fast parallel filesystem search by filename"
  homepage "https://github.com/rywils/fafind"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rywils/fafind/releases/download/v#{version}/fafind-macos-x86_64-v#{version}.tar.gz"
      sha256 "215c2df984c5744e4331dbc5f96323a970d3cea27852126530702a576b085b21"
    end

    on_arm do
      url "https://github.com/rywils/fafind/releases/download/v#{version}/fafind-macos-arm64-v#{version}.tar.gz"
      sha256 "0ad10e59911d3059cc5dfaf2da218adb945740d840617810008971f00f4c2ada"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rywils/fafind/releases/download/v#{version}/fafind-linux-x86_64-v#{version}.tar.gz"
      sha256 "215c2df984c5744e4331dbc5f96323a970d3cea27852126530702a576b085b21"
    end

    on_arm do
      url "https://github.com/rywils/fafind/releases/download/v#{version}/fafind-linux-arm64-v#{version}.tar.gz"
      sha256 "1bc1a1870f54c25f4e02a65414405cd805cd2dc0f3ca7d4a6d1f77fbd80a264b"
    end
  end

  def install
    bin.install "fafind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fafind --version")
  end
end















