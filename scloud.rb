class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "8.0.0-beta.8"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.12.0-beta.8/scloud_v8.0.0-beta.8_darwin_amd64.tar.gz"
    sha256 "ebecdd846aa6d1d23f291ab41cc3bfbead047e620dd2f023d69a5803c082f509"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.12.0-beta.8/scloud_v8.0.0-beta.8_linux_amd64.tar.gz"
    sha256 "5eb7ee548f17647dbe728bc90f29586c220dec5a7395cc7391588917b054eb7b"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

