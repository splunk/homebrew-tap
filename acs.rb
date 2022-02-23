class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.0.0-beta.1"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.0.0-beta.1/acs_v2.0.0-beta.1_darwin_amd64.tar.gz"
    sha256 "2124a49369b77cab1de1ba0853e5fd543a5118160d9e52d0117cacfb94481e52"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.0.0-beta.1/acs_v2.0.0-beta.1_linux_amd64.tar.gz"
    sha256 "46a27ce4d4952900b740f3c64514bf651a0d1e3adb6475b5e4685a96b9ccbdb7"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

