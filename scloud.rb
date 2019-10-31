class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "1.0.0"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.0.0/scloud_v1.0.0_darwin_amd64.tar.gz"
    sha256 "520fdd2db0eea3a6bde148f9d4329450a12cbd99bda7cf515c0a4a289bf4a2ef"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.0.0/scloud_v1.0.0_linux_amd64.tar.gz"
    sha256 "f3b08d3ddd8486f30a9531a49cfb881a0f53181ec70b62577426f7d8e4fefd2c"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

