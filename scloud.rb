class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "4.0.0"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.7.0/scloud_v4.0.0_darwin_amd64.tar.gz"
    sha256 "059a3acda940d4734b44ea7bbaed3b4657b88afe0c56881861ec13bd89f725f1"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.7.0/scloud_v4.0.0_linux_amd64.tar.gz"
    sha256 "1d31e5d4457aebbdd1a4ca0dd20cf4a6284b3325828e1340bc8a9d60f824d9f7"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

