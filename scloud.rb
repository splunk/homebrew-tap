class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "7.0.0"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.11.0/scloud_v7.0.0_darwin_amd64.tar.gz"
    sha256 "990801d834b2b961ca58a9d6e629cc29d3d76cb08dc049cdda4935f17134d19b"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.11.0/scloud_v7.0.0_linux_amd64.tar.gz"
    sha256 "6e83cbd3c2f7c8b21cbc8fb7e671d56ea11b1044125e73fcb0ef17611af1f00d"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

