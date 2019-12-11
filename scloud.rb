class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "1.1.0"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.0.1/scloud_v1.1.0rc_darwin_amd64.tar.gz"
    sha256 "06b406e62583947538b2f84c71b7434841272678d273dd93f4671501ccf1c4ed"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.1.0/scloud_v1.1.0rc_linux_amd64.tar.gz"
    sha256 "88a1bfc4718602967a2dbf89679fca3c7d969bbfc3a908aec3f40dc6a34b6f64"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

