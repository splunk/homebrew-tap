class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.20.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.20.0/acs_v2.20.0_darwin_amd64.tar.gz"
    sha256 "741e6d94028506b95848156375cbfac3b51e146fd33150c8ad30b33b058ab50a"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.20.0/acs_v2.20.0_linux_amd64.tar.gz"
    sha256 "8cfc896f80cf0dac975f6bbb53437b9602bd8d6c096ba50c244939af70cda00d"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

