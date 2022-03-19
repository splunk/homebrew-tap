class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.0.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.0.0/acs_v2.0.0_darwin_amd64.tar.gz"
    sha256 "5bd5cc4a4f8a4314002335f7fe8fee4bafa4dda3a66b7f86c9152d1940052c0e"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.0.0/acs_v2.0.0_linux_amd64.tar.gz"
    sha256 "c0034ff30a0444c441748fd12001ffdc4c3137d16ed6927dbed9fe84cb569c5d"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

