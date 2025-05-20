class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.18.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.18.0/acs_v2.18.0_darwin_amd64.tar.gz"
    sha256 "edb4897d3205f91b7d926c0a327e62d0f5e2c71ff96bfe4fb2ae395079227cf3"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.18.0/acs_v2.18.0_linux_amd64.tar.gz"
    sha256 "81ea3c454af4249a140b3121728780b29018aa5539a0392092b2d275469ecf85"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

