class Parqview < Formula
  desc "Terminal UI for exploring Parquet and CSV files"
  homepage "https://github.com/robince/parqview"
  license "MIT"
  version "0.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    if Hardware::CPU.arm?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    if Hardware::CPU.arm?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "parqview"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/parqview --version")
  end
end
