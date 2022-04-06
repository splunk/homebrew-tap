class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.1.1"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.1.1/acs_v2.1.1_darwin_amd64.tar.gz"
    sha256 "7402961e0cefb933eb33fd21eedeeea6f62689c9e450b9cb138a4a181889e49d"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.1.1/acs_v2.1.1_linux_amd64.tar.gz"
    sha256 "350def9b9f5b6634cb34b8927899a83e4b7fcbab9760619a1d56e0ce5208cf49"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

