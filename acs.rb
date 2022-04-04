class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.1.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.1.0/acs_v2.1.0_darwin_amd64.tar.gz"
    sha256 "993e43cca2cc975c5f0abcc56375247f6e86350907e9e5998e1eea685030ae1e"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.1.0/acs_v2.1.0_linux_amd64.tar.gz"
    sha256 "3cc197e3e317c8c1dca133d6bfe6b3915beef0762990b37b46666c6a4a70e8b6"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

