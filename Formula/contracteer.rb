# Generated with JReleaser 1.23.0 at 2026-06-07T14:11:48.455317627Z

class Contracteer < Formula
  desc "The loyal guard of your API contracts."
  homepage "https://github.com/sabai-tech/contracteer"
  version "3.1.0"
  license "GPL-3.0-only"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/sabai-tech/contracteer/releases/download/3.1.0/contracteer-3.1.0-linux-aarch_64.zip"
    sha256 "9b3aeee93feef9b786c15acf4b908e8bf3f63e2e24b7544eb93e4f58a4a1b600"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sabai-tech/contracteer/releases/download/3.1.0/contracteer-3.1.0-linux-x86_64.zip"
    sha256 "cda688781768bf0d8fe57cc2f1d5307beae9353b3f7719f60e7753e846f8a3b6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sabai-tech/contracteer/releases/download/3.1.0/contracteer-3.1.0-osx-aarch_64.zip"
    sha256 "40a67acb540e4cb254f4850e4aa6a1ccd41e3810f3a8bb0ce4a84e8ae7ed27a2"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sabai-tech/contracteer/releases/download/3.1.0/contracteer-3.1.0-osx-x86_64.zip"
    sha256 "c2e9bbe60dd0f7461929e85a8b26222b95793bf0c12772e110aefa62bd97a517"
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
    assert_match "3.1.0", output
  end
end
