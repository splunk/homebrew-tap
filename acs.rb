class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.10.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.10.0/acs_v2.10.0_darwin_amd64.tar.gz"
    sha256 "1965de85ceb9711887fc7cbd9af883ebd901e4ee53486b6fbb65f443c02d3cda"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.10.0/acs_v2.10.0_linux_amd64.tar.gz"
    sha256 "b44302b1f41e3e73a43f276c13fad5c75d96381ede8332495f868777f5a6da3d"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

