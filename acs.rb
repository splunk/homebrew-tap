class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.11.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.11.0/acs_v2.11.0_darwin_amd64.tar.gz"
    sha256 "80cb3ed35b6ffadf6296b6edccf2a4a9e21915fd48fe0109fb7d932591ac86a4"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.11.0/acs_v2.11.0_linux_amd64.tar.gz"
    sha256 "0a4c5cf4ee65c88a0e06c498cf3e217d3953d77569d3aed0335da346f9ebe35c"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

