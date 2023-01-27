class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.9.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.9.0/acs_v2.9.0_darwin_amd64.tar.gz"
    sha256 "6d94a10b3c4eab49ef45abcd4fc054cd80770b8894e305c693716cd048d9ccf0"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.9.0/acs_v2.9.0_linux_amd64.tar.gz"
    sha256 "6d2a59058f6c0614deea58797f001c374a1c9e75a3d2024313182d1ad3267c8f"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

