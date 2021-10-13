class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "8.0.0-beta.6"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.12.0-beta.6/scloud_v8.0.0-beta.6_darwin_amd64.tar.gz"
    sha256 "42385e4f7a2f0b0c537d7d6152605e6ec3ea8de4a3d35a4947b279626884ad80"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/splunk-cloud-sdk-go/releases/download/v1.12.0-beta.6/scloud_v8.0.0-beta.6_linux_amd64.tar.gz"
    sha256 "36d56cbd77d1528ce4d1666cfb3eaa90bb58b2d5213ba6b12e5283d335423bcc"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end

