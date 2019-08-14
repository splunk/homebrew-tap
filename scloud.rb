class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "1.0.0-beta.3"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.0.0-beta.3/scloud_v1.0.0-beta.3_darwin_amd64.tar.gz"
    sha256 "2ad03e6d2f880db28b085f7fa4da8d876cf383af503ff68e78dc9205f60c9421"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.0.0-beta.3/scloud_v1.0.0-beta.3_linux_amd64.tar.gz"
    sha256 "efadf84dbeb923406dba6e0bbd9bfee7c31d32b60d89d6ea9475ea6286f36e9f"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

