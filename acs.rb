class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.20.1"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.20.1/acs_v2.20.1_darwin_amd64.tar.gz"
    sha256 "76126ec2be27684d70cc988853e398ca6d203f4b33fb51e7a95a1624a49122a8"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.20.1/acs_v2.20.1_linux_amd64.tar.gz"
    sha256 "4cf0165fa02bc02f39551ca17d239d088aae665a300fb69dfec78b4b1ae78119"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

