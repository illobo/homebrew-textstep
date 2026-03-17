class Textstep < Formula
  desc "TUI step sequencer, drum machine, and synthesizer"
  homepage "https://github.com/illobo/textStep"
  version "2.0.3"
  license "MIT"

  on_macos do
    url "https://github.com/illobo/textStep/releases/download/v#{version}/textstep-universal-apple-darwin.tar.gz"
    sha256 "d1404aca8bc8d7dac015d2b44b8697aa886f64296b219e8365efec28a8d417de"
  end

  on_linux do
    url "https://github.com/illobo/textStep/releases/download/v#{version}/textstep-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cb5dbe6edd684a581e479ee7f89cbddfeb7e1d14b739beafd02678021756f3c4"
  end

  def install
    bin.install "textstep"
  end

  test do
    assert_match "textstep #{version}", shell_output("#{bin}/textstep --version")
  end
end
