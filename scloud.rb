class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "1.0.1"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.0.1/scloud_v1.0.1rc_darwin_amd64.tar.gz"
    sha256 "6fcdac24a352beaa7fd2f1fa8aca18e2f85221c653c1759f7e6106549bc3e49a"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.0.1/scloud_v1.0.1rc_linux_amd64.tar.gz"
    sha256 "542171d5d37518e74fdabf939f8a61ce6a7720b7d8cfc455373e2c3f04105ac3"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

