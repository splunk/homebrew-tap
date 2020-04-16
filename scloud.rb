class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "2.0.0"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.5.0/scloud_v2.0.0_darwin_amd64.tar.gz"
    sha256 "a30efa0886e6769973003a97ff4c026a20126a4300fcbee2b8909a2b8b23d49c"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.5.0/scloud_v2.0.0_linux_amd64.tar.gz"
    sha256 "29bcfdb10c0df1f664a1ad7754206385f327bb325de8094b9251b92754f3d093"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

