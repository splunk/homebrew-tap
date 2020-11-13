class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "6.0.0"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.10.0/scloud_v6.0.0_darwin_amd64.tar.gz"
    sha256 "c866eda616fd5f03fe4fce4223c431b8a420cc586aab7c33f695a5f7790eb2f3"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.10.0/scloud_v6.0.0_linux_amd64.tar.gz"
    sha256 "be8c650f3f66d9484ec41e39e715abac7730bb6c207d9ed62d50614553b4e191"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

