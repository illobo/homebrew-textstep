class Textstep < Formula
  desc "TUI step sequencer, drum machine, and synthesizer"
  homepage "https://github.com/illobo/textStep"
  version "1.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/illobo/textStep/releases/download/v#{version}/textstep-universal-apple-darwin.tar.gz"
    sha256 "e4b317da1e2ebe58702a1837a442f68d82c03bcb282cdd6051ae6a1470933ae3"
  end

  on_linux do
    url "https://github.com/illobo/textStep/releases/download/v#{version}/textstep-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2ae80d543f01edf7f9f57f14f6a2b252c2c2477eb23c8acfe18149ac57fb28a5"
  end

  def install
    bin.install "textstep"
  end

  test do
    assert_match "textstep #{version}", shell_output("#{bin}/textstep --version")
  end
end
