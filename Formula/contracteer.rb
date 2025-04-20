# Generated with JReleaser 1.17.0 at 2025-04-20T21:13:54.660834875Z

class Contracteer < Formula
  desc "The musketeer of your API contracts."
  homepage "https://github.com/sabai-tech/contracteer"
  version "1.0.2"
  license "GPL-3.0-only"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/sabai-tech/contracteer/releases/download/1.0.2/contracteer-1.0.2-linux-aarch_64.zip"
    sha256 "4656168e8ee52b44985be7dbad7c57d4711006182abcecc307ec29fd4ec85c36"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sabai-tech/contracteer/releases/download/1.0.2/contracteer-1.0.2-linux-x86_64.zip"
    sha256 "839c8afc57bb9c9a59d888a28a0cd992dc26427b8eba2c669ed52c47355341ae"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sabai-tech/contracteer/releases/download/1.0.2/contracteer-1.0.2-osx-aarch_64.zip"
    sha256 "d5512e109eded149c477a12b6f40a3b12f51fb456a7cfbff07c4b207874ea203"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sabai-tech/contracteer/releases/download/1.0.2/contracteer-1.0.2-osx-x86_64.zip"
    sha256 "e47ff4af73ab9d74a61bdfce555f4da36b09b384865b83a2caf6f655001347e1"
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
    assert_match "1.0.2", output
  end
end
