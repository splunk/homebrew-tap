class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "1.0.0-beta.2"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.0.0-beta.2/scloud_v1.0.0-beta.2_darwin_amd64.tar.gz"
    sha256 "eb1b90930439a3a0409e0aff492ac524c5852aa25ac0dee6e9a9b09f28421e90"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.0.0-beta.2/scloud_v1.0.0-beta.2_linux_amd64.tar.gz"
    sha256 "f5cb1db4845436215ee2340f68cd1495b06d0b3eb393e0722703c60e8f202a84"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

