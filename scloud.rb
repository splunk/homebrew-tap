class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "8.0.0-beta.5"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.12.0-beta.5/scloud_v8.0.0-beta.5_darwin_amd64.tar.gz"
    sha256 "84f9ce049db17329e457417950101496f4affda1acc7dfd99228edb97deebc01"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.12.0-beta.5/scloud_v8.0.0-beta.5_linux_amd64.tar.gz"
    sha256 "6dcc8e40f442789a2ee329fabb5c9cdad873f9c896fe5604b7dce80e9c738e05"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

