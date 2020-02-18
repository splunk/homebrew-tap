class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "1.2.1"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.2.1/scloud_v1.2.1rc_darwin_amd64.tar.gz"
    sha256 "d0876c358a8279c709f104b218fedb5775314bcd9a87f17eaffc54d0c5c8fefe"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.2.1/scloud_v1.2.1rc_linux_amd64.tar.gz"
    sha256 "ca0c9ac959df4589676f366d6bfdb2a903fe7444387d570c9d2152876f59eca6"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

