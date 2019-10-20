class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "2.0.1"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v2.0.1/scloud_v2.0.1rc1_darwin_amd64.tar.gz"
    sha256 "ab59ba8dcf4c10e3b42be47a1c9e43aeaf7f2b0e57dd30ff1e769cec179a0b80"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v2.0.1/scloud_v2.0.1rc1_linux_amd64.tar.gz"
    sha256 "94594c04e96bc43951afb85b1856b08f9e48c2f7140b4b5c2858efc3786195bf"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

