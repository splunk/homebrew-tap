class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "7.1.0"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.11.1/scloud_v7.1.0_darwin_amd64.tar.gz"
    sha256 "a20b5781073c33116391e78f3fa810693d6603b6994178e7f7a3fc9e99431864"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.11.1/scloud_v7.1.0_linux_amd64.tar.gz"
    sha256 "b1f47cb2ffd17fe87f07599c88da42a07e4c51e3c37986e4bb0509000e1344a9"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

