class Parqview < Formula
  desc "Terminal UI for exploring Parquet and CSV files"
  homepage "https://github.com/robince/parqview"
  license "MIT"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_darwin_amd64.tar.gz"
      sha256 "19c878c77283ee5bb6608a2ec2383c73dee9f8feed750bc0174d46f5b1709de8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_darwin_arm64.tar.gz"
      sha256 "f6439a31de3aa43ac2551e8f028989a2c2fc1be30ea701dc5f1441ae9d87acb3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_linux_amd64.tar.gz"
      sha256 "461fcaaf2612f7ae952c1be9c807d324d28f511a5fe403dff0db2b1b5683b37c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/robince/parqview/releases/download/v#{version}/parqview_#{version}_linux_arm64.tar.gz"
      sha256 "42d458c31090ea1783b6e4e945c9a09a7819a0a2a21bd0214e2f399e34f93584"
    end
  end

  def install
    bin.install "parqview"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/parqview --version")
  end
end
