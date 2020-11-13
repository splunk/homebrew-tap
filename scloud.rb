class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "6.0.0"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.10.0/scloud_v6.0.0_darwin_amd64.tar.gz"
    sha256 "e5765d3b75ae67030f168470a1bc79579a022b886659fd0fb30fbc398857785d"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.10.0/scloud_v6.0.0_linux_amd64.tar.gz"
    sha256 "ab88d9a558f94600f9dda97e42ec593d11c4519d8127b3b47178d40c49daa892"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

