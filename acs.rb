class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.17.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.17.0/acs_v2.17.0_darwin_amd64.tar.gz"
    sha256 "641c53dca75ea8ef8f7cd3a23ca7ecb1fc09fc76df449e12b61cf36a55eff056"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.17.0/acs_v2.17.0_linux_amd64.tar.gz"
    sha256 "2aae0450a74a3226787b08948cfd67e295d7fc5d15c8a416406659438b330255"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

