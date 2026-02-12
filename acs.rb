class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.21.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.21.0/acs_v2.21.0_darwin_amd64.tar.gz"
    sha256 "dcfb645cdc3c2f991d08d5b0feba1988992287e28ba11e09549e0ae23d79b866"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.21.0/acs_v2.21.0_linux_amd64.tar.gz"
    sha256 "4c8c054c1a26c5a283553e6b758afb57f1c995bfa67bbbcb041e26efc624b85b"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

