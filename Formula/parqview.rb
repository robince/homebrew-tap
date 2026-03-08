class Parqview < Formula
  desc "Terminal UI for exploring Parquet and CSV files"
  homepage "https://github.com/robince/parqview"
  license "MIT"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_darwin_amd64.tar.gz"
      sha256 "afe8c159b74b0b385ae5f67775f9720dc74ab9051f72f628d192e09c0478058e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_darwin_arm64.tar.gz"
      sha256 "bbf738c0b918a168b0a05ceced2b38d59076991456f3de9c867125cf28523b10"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_linux_amd64.tar.gz"
      sha256 "8f2f2dbe9d5cd98d21ecc4c5a04df1fccf23c41f07847b189ae542f9881d7809"
    end
    if Hardware::CPU.arm?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_linux_arm64.tar.gz"
      sha256 "75d323012f7b742ea7659ca723fedf013aef9c5c1f3eb9588f0b6e406cdb000e"
    end
  end

  def install
    bin.install "parqview"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/parqview --version")
  end
end
