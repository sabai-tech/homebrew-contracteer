# Generated with JReleaser 1.23.0 at 2026-03-19T11:16:23.318601751Z

class Contracteer < Formula
  desc "The loyal guard of your API contracts."
  homepage "https://github.com/sabai-tech/contracteer"
  version "2.0.0"
  license "GPL-3.0-only"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/sabai-tech/contracteer/releases/download/2.0.0/contracteer-2.0.0-linux-aarch_64.zip"
    sha256 "8965b229ea11d8e8183269129a5794017866345b864ac686884fe394bb3d9264"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sabai-tech/contracteer/releases/download/2.0.0/contracteer-2.0.0-linux-x86_64.zip"
    sha256 "83d57e7a06c436c365b887f66f9d0f6d7595e1d7dedb5bab2b39d54b34895917"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sabai-tech/contracteer/releases/download/2.0.0/contracteer-2.0.0-osx-aarch_64.zip"
    sha256 "798cf7583d5557656762c72ced06dd8b9ecc27b97fcd28ccb1ddc570311ed868"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sabai-tech/contracteer/releases/download/2.0.0/contracteer-2.0.0-osx-x86_64.zip"
    sha256 "4ed7bce7bd879473fe70d99070918b0c6290218b6e053f65d98bf3e663ccfa5a"
  end

  livecheck do
    url "https://github.com/sabai-tech/contracteer/releases/latest"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/contracteer" => "contracteer"
  end

  test do
    output = shell_output("#{bin}/contracteer --version")
    assert_match "2.0.0", output
  end
end
