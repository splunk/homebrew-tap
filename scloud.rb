class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "4.0.1"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.8.0/scloud_v4.0.1_darwin_amd64.tar.gz"
    sha256 "ae57cc4aa0225bac4597dfc7e4847d31782579dd904716786667eab479983c70"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.8.0/scloud_v4.0.1_linux_amd64.tar.gz"
    sha256 "65fbb8ff3d096e2537099f669122551a0ea43c2670ccbf60ba8f600c9801e0d6"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

