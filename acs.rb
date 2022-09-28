class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.7.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.7.0/acs_v2.7.0_darwin_amd64.tar.gz"
    sha256 "6ad571a601adf8b2b51cd371d5fd6fce340bd4db454186e530c4a27730ccc0ae"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.7.0/acs_v2.7.0_linux_amd64.tar.gz"
    sha256 "29214b52043d8f8053dc59dd06a812097d36a139aa4d7df34905778b71d0088e"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

