# Generated with JReleaser 1.23.0 at 2026-08-04T08:35:41.220476574Z

class Contracteer < Formula
  desc "The loyal guard of your API contracts."
  homepage "https://contracteer.dev"
  version "4.0.0"
  license "GPL-3.0-only"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/contracteer-dev/contracteer/releases/download/4.0.0/contracteer-4.0.0-linux-aarch_64.zip"
    sha256 "c00fb177f1313806d8584c634acc02f90ae2299eab858154cd9118adc493751c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/contracteer-dev/contracteer/releases/download/4.0.0/contracteer-4.0.0-linux-x86_64.zip"
    sha256 "781be856f0f1764c8cf6fa0936bc767ba5733d90f289780f066f33d7e0c7f52e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/contracteer-dev/contracteer/releases/download/4.0.0/contracteer-4.0.0-osx-aarch_64.zip"
    sha256 "05a92b89d2ed7d586fac62006a470808c39f5fd1d0ffd2f39d2e3c84910a8cf8"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/contracteer-dev/contracteer/releases/download/4.0.0/contracteer-4.0.0-osx-x86_64.zip"
    sha256 "603181cc17e46c1b8b21210afba49dfd74f6bbb73a70ca0c6a355db1874ea2a0"
  end

  livecheck do
    url "https://github.com/contracteer-dev/contracteer/releases/latest"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/contracteer" => "contracteer"
  end

  test do
    output = shell_output("#{bin}/contracteer --version")
    assert_match "4.0.0", output
  end
end
