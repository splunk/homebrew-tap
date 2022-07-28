class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.5.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.5.0/acs_v2.5.0_darwin_amd64.tar.gz"
    sha256 "1df64720ada61659c36470d8f21ce8e85b100d468634af39ba8775214c4fba1a"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.5.0/acs_v2.5.0_linux_amd64.tar.gz"
    sha256 "6ec46702b223af58f75ee9059152b30a98d4be135838cdc014f48001f6022219"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

