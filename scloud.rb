class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "3.0.0"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.6.0/scloud_v3.0.0_darwin_amd64.tar.gz"
    sha256 "09f79201738f3d9089cd47d47ece8cbda80306d9b96a80a468ce65d8be13f90a"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.6.0/scloud_v3.0.0_linux_amd64.tar.gz"
    sha256 "20c857e168f26c09cab07da8484cd03ba49f917ece1df8630cc7141a9d826b13"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

