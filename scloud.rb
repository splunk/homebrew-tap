class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "8.0.0-beta.4"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.12.0-beta.4/scloud_v8.0.0-beta.4_darwin_amd64.tar.gz"
    sha256 "2534593b9126108e5a3db3fde77e750178208f109b41dd10b5f8828c859bf3fd"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.12.0-beta.4/scloud_v8.0.0-beta.4_linux_amd64.tar.gz"
    sha256 "a5f63de2e0f1e8fd939a9adf433fdf8950b186c3646df9a515100b121b9e6167"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

