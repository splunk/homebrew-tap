class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "v2.0.0-beta.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.0.0-beta.0/acs_v2.0.0-beta.0_darwin_amd64.tar.gz"
    sha256 "96f7ef7ddaff7a06b05298d71b384cfbfd1b5fe335511fa89dd48230a0a2ef6c"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.0.0-beta.0/acs_v2.0.0-beta.0_linux_amd64.tar.gz"
    sha256 "5c0c4cd4990e9381ab42cec26272eb27d48586841cb92aa07d1722b0a3610e78"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

