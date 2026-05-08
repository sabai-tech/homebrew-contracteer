# Generated with JReleaser 1.23.0 at 2026-05-08T00:00:00.000000000Z

class Contracteer < Formula
  desc "The loyal guard of your API contracts."
  homepage "https://github.com/sabai-tech/contracteer"
  version "3.0.0"
  license "GPL-3.0-only"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/sabai-tech/contracteer/releases/download/3.0.0/contracteer-3.0.0-linux-aarch_64.zip"
    sha256 "0be47b62fbad7eaca367384f1a5ff5f4e6f8fab8213399ff01355788af1365ab"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sabai-tech/contracteer/releases/download/3.0.0/contracteer-3.0.0-linux-x86_64.zip"
    sha256 "e3cac895a30dec07506f91380821d378d269de60509e5e510627853668a4892f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sabai-tech/contracteer/releases/download/3.0.0/contracteer-3.0.0-osx-aarch_64.zip"
    sha256 "548db2f6d4f85197daf2b9837a0b1244488f6229b77070878f938bdfb3bf4604"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sabai-tech/contracteer/releases/download/3.0.0/contracteer-3.0.0-osx-x86_64.zip"
    sha256 "ac1c0f1c3b9d083539234963635eb800c2968a614806a8a4e2eab51a42a07eb8"
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
    assert_match "3.0.0", output
  end
end
