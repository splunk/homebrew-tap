class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "1.3.0"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.3.0/scloud_v1.3.0_darwin_amd64.tar.gz"
    sha256 "e132c71003fd3598098c6195270eb9cd6750eae76a62a83f25fdd6f9c0ae72fb"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.3.0/scloud_v1.3.0_linux_amd64.tar.gz"
    sha256 "79239d379ebd3b0b6a8024aa87b46e69cb426891b028bbfed0c16a7266efcf79"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

