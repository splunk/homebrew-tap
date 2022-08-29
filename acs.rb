class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.6.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.6.0/acs_v2.6.0_darwin_amd64.tar.gz"
    sha256 "3f88c38c42a7708d7bc1d4d86952fb89a6866b70fb9c68b8e7f84431b501ca93"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.6.0/acs_v2.6.0_linux_amd64.tar.gz"
    sha256 "12d2b728020048591493d315edf877d4b54b254e2f6158484ae5aa911562e718"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

