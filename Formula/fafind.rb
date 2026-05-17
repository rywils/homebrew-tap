class Fafind < Formula
  desc "Fast parallel filesystem search by filename"
  homepage "https://github.com/rywils/fafind"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rywils/fafind/releases/download/v#{version}/fafind-macos-arm64-v#{version}.tar.gz"
      sha256 "c374c512673a9f6dff6b2783e25874b35e0336a2f30d583613598ecaa8192610"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rywils/fafind/releases/download/v#{version}/fafind-linux-x86_64-v#{version}.tar.gz"
      sha256 "ddd5e414b05d64f327d7f2d8e30b4c6e56a50d4648e6758e741edcfdd3697e65"
    end

    on_arm do
      url "https://github.com/rywils/fafind/releases/download/v#{version}/fafind-linux-arm64-v#{version}.tar.gz"
      sha256 "74802bd019e20aad58b6c1bef934d4f185c2dbab6e07048ad3e3d4297359801b"
    end
  end

  def install
    bin.install "fafind"
    bin.install_symlink "fafind" => "faf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fafind --version")
    assert_match version.to_s, shell_output("#{bin}/faf --version")
  end
end
