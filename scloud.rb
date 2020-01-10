class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "1.1.1"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.1.1/scloud_v1.1.1rc_darwin_amd64.tar.gz"
    sha256 "073628228e1c2df41706091152133a83a7f273096277c7f87f8f9f5d68b552a8"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.1.1/scloud_v1.1.1rc_linux_amd64.tar.gz"
    sha256 "f53d1f4d3fee5db29a94d4b49cb882a29968a2672e14a7da92f2062538fc4eaf"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

