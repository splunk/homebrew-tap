class Scloud < Formula

  desc "Splunk Cloud Platform CLI"
  homepage "https://github.com/splunk/scloud"
  version "1.0.0-beta.0"

  if OS.mac?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/scloud/releases/download/1.0.0-beta.0/scloud_1.0.0-beta.0_darwin_amd64.tar.gz"
    sha256 "2ed5345f863ee01df3796b8fc693a89b2fc2c7e240b6b574fbc7176605693ab4"
  elsif OS.linux?
    head "https://github.com/splunk/scloud.git"
    url "https://github.com/splunk/scloud/releases/download/1.0.0-beta.0/scloud_1.0.0-beta.0_linux_amd64.tar.gz"
    sha256 "258f5dd0be0e8948ba2e0505c39eaed1145fcbb30f5a23e12a7f9542d2a008a3"
  end

  def install
    bin.install "scloud"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/scloud version"
  end
end
