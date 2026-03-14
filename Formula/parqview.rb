class Parqview < Formula
  desc "Terminal UI for exploring Parquet and CSV files"
  homepage "https://github.com/robince/parqview"
  license "MIT"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_darwin_amd64.tar.gz"
      sha256 "42c3a9bbd6cd030bf0208d4cacd42cfa81b90836c63b6e6efd002149a243abec"
    end
    if Hardware::CPU.arm?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_darwin_arm64.tar.gz"
      sha256 "0e57511fbc77d8a5f8e8d008a1ba669fb873d7b7abe4f81bbd30bd0e66b04321"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_linux_amd64.tar.gz"
      sha256 "f92f5dd447b7545c7315e2663afce5f612959a2686a7a60d4d91ba5f3099edf3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_linux_arm64.tar.gz"
      sha256 "9b494a4d50b6466b0ebd6d5a72411ce3bfd1a5607dda8cb89068336a5987d8fa"
    end
  end

  def install
    bin.install "parqview"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/parqview --version")
  end
end
