class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.13.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.13.0/acs_v2.13.0_darwin_amd64.tar.gz"
    sha256 "5bd789c4643abd04fd908c4f79d2f0a79f3b45ca09d7372a8790dc0a893b43cb"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.13.0/acs_v2.13.0_linux_amd64.tar.gz"
    sha256 "39d13cc8d2ab27e5ab26f97e10956bd9d3b71abc52ecfefcdb5828d13a0b6e1d"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

