class Parqview < Formula
  desc "Terminal UI for exploring Parquet and CSV files"
  homepage "https://github.com/robince/parqview"
  license "MIT"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_darwin_amd64.tar.gz"
      sha256 "d07ebfb78311ffec8808932458ea143d45d52dea14067df50c8f68cd5a8f9b99"
    end
    if Hardware::CPU.arm?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_darwin_arm64.tar.gz"
      sha256 "26ed2d07417571637bb3feeb7b19ecd2dcfc201b5e25220b1cfdb791e2b8ee7e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_linux_amd64.tar.gz"
      sha256 "7b4cd5b65e18e90456cddb597a0eeae3275831c13ee47220c7e367433957cf7b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_linux_arm64.tar.gz"
      sha256 "032968f6323cdb1b5e3a2a1e01f1057ef59f08e0d5bbb52cf0bce92fe6a28cb3"
    end
  end

  def install
    bin.install "parqview"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/parqview --version")
  end
end
