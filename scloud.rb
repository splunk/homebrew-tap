class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "8.0.0-beta.2"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.12.0-beta.2/scloud_v8.0.0-beta.2_darwin_amd64.tar.gz"
    sha256 "39a2fe18abdcfcbb411e2c51624740a8a987b21af2457581efbdf51d84279731"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.12.0-beta.2/scloud_v8.0.0-beta.2_linux_amd64.tar.gz"
    sha256 "da1904b51906c13a5cc95682a142b4a308b3bfc2acc3ea3da935df77908fd81e"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

