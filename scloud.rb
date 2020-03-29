class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "2.0.0"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.4.0/scloud_v2.0.0_darwin_amd64.tar.gz"
    sha256 "166d12e86fada73702c438193eca3bbe99c73e83fbf278b19192742e6c0c8c5d"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.4.0/scloud_v2.0.0_linux_amd64.tar.gz"
    sha256 "d8b99fbbcd8d7b5b19e7a711c93db2a451969cdc8e018c6da3efa5e392d98bf4"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

