class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.12.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.12.0/acs_v2.12.0_darwin_amd64.tar.gz"
    sha256 "8e346c4d48ef9fffb6ad10a087b0320df1b11aa83fef2e11645a32c2d98e3c74"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.12.0/acs_v2.12.0_linux_amd64.tar.gz"
    sha256 "373cb7fc281ea30e3b09af11652fef54f74c5d5e7145665ab5997e36b56ab460"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

