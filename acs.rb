class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.8.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.8.0/acs_v2.8.0_darwin_amd64.tar.gz"
    sha256 "b1d8bf6f949b8ce8fc334d4f09b0547aae455f5d339a52f310fa47608e72b91b"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.8.0/acs_v2.8.0_linux_amd64.tar.gz"
    sha256 "42a2c702d37b9fe2b91d123fb164bad9db016faa3dc1690553adde139c6ba213"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

