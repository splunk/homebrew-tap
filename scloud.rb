class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "8.0.0-beta.1"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.12.0-beta.1/scloud_v8.0.0-beta.1_darwin_amd64.tar.gz"
    sha256 "7ea35b5e12466c99687de5dfbca82dcb8bd987ae07f783014568132466ac7c32"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.12.0-beta.1/scloud_v8.0.0-beta.1_linux_amd64.tar.gz"
    sha256 "681e53904e48d7bde5be91850d442458db456dfeefa77477862088f71b8f6256"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

