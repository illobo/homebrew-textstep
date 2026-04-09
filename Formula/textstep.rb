class Textstep < Formula
  desc "TUI step sequencer, drum machine, and synthesizer"
  homepage "https://github.com/illobo/textStep"
  version "3.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/illobo/textStep/releases/download/v#{version}/textstep-universal-apple-darwin.tar.gz"
    sha256 "45f55abddcd37cbee8a99b95f89bd47f3895e71680df601ff49f9e40a1afaa83"
  end

  on_linux do
    url "https://github.com/illobo/textStep/releases/download/v#{version}/textstep-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2dcfb0093d33729b6981501a8aa3065e4b244e222f893e340ec2bc1f3c14ddff"
  end

  def install
    bin.install "textstep"
  end

  test do
    assert_match "textstep #{version}", shell_output("#{bin}/textstep --version")
  end
end
