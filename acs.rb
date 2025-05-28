class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.19.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.19.0/acs_v2.19.0_darwin_amd64.tar.gz"
    sha256 "21a2343670a2a32dbd87774952e814f210f8473bfe792a4920158cba4ee3b11d"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.19.0/acs_v2.19.0_linux_amd64.tar.gz"
    sha256 "ae8bb2b9d906c95f23af05439ed1e3ba090a8adb7bdf61d5b615c1c4f1e230f3"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

