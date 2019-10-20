class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "2.0.1"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v2.0.1/scloud_v2.0.1rc1_darwin_amd64.tar.gz"
    sha256 "f3e7c44484693f1da447ea728a0c8d7be304d4e5c8407db30306bb91ede6e969"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v2.0.1/scloud_v2.0.1rc1_linux_amd64.tar.gz"
    sha256 "c5a8876bed31644e5d8e31ebeccd41aacec6c1b30f4587ddda2b8ab054317679"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

