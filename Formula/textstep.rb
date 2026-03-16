class Textstep < Formula
  desc "TUI step sequencer, drum machine, and synthesizer"
  homepage "https://github.com/illobo/textStep"
  version "2.0.1"
  license "MIT"

  on_macos do
    url "https://github.com/illobo/textStep/releases/download/v#{version}/textstep-universal-apple-darwin.tar.gz"
    sha256 "222d527a453fc2760b35d82fc1d26f9756e11bf12b420744489e4e92be95132c"
  end

  on_linux do
    url "https://github.com/illobo/textStep/releases/download/v#{version}/textstep-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c6e12bae953e7e23a8f9e594f1b506fb4f53ad3e01bd03bbdc72b7f0f5411be9"
  end

  def install
    bin.install "textstep"
  end

  test do
    assert_match "textstep #{version}", shell_output("#{bin}/textstep --version")
  end
end
