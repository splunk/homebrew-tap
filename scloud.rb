class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "5.0.0"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.9.0/scloud_v5.0.0_darwin_amd64.tar.gz"
    sha256 "5c241b1e4e4db75a1cfc930bda59cadf62f4425288957903e5d3f809078af65b"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.9.0/scloud_v5.0.0_linux_amd64.tar.gz"
    sha256 "dd7674349d276d037baf2672f29c3e8a250b64976d85687c81d06f0ae7e973bc"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

