class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "8.0.0-beta.3"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.12.0-beta.3/scloud_v8.0.0-beta.3_darwin_amd64.tar.gz"
    sha256 "3e9177760ba02a1f0438acf1ca271c3d332950e8b40acabbc3f77463ddfd0b3e"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.12.0-beta.3/scloud_v8.0.0-beta.3_linux_amd64.tar.gz"
    sha256 "a53d54d411920a33edcd1fd7bb25da88e902be91f692eb7a0d716869001b1c29"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

