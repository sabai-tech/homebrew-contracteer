# Generated with JReleaser 1.17.0 at 2025-04-19T01:03:25.813384+02:00

class Contracteer < Formula
  desc "The musketeer of your API contracts."
  homepage "https://github.com/sabai-tech/contracteer"
  version "1.0.0"
  license "GPL-3.0-only"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/sabai-tech/contracteer/releases/download/1.0.0/contracteer-1.0.0-linux-aarch_64.zip"
    sha256 "24034a2f183c4ca4db408b702c91610ce0ebddc124af926e5d2799e535793a62"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sabai-tech/contracteer/releases/download/1.0.0/contracteer-1.0.0-linux-x86_64.zip"
    sha256 "e8d08834d92e1ad0fe3830ef7e11f9f4dede2de64149ef176e2a9321e532d3cc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sabai-tech/contracteer/releases/download/1.0.0/contracteer-1.0.0-osx-aarch_64.zip"
    sha256 "4ef05faa2faaef8d4329b74685cd874c8092cdf421db801fb6feb3031eaff525"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sabai-tech/contracteer/releases/download/1.0.0/contracteer-1.0.0-osx-x86_64.zip"
    sha256 "8ce77e77f8d386565b6190f0a6886889bf7996541d3cffd2a9ad60bc33aaecc6"
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
    assert_match "1.0.0", output
  end
end
