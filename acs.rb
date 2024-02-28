class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.14.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.14.0/acs_v2.14.0_darwin_amd64.tar.gz"
    sha256 "3d13ee73dbd6c66948afdc025105088a0193b594f6a89b23074fa977b59533ce"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.14.0/acs_v2.14.0_linux_amd64.tar.gz"
    sha256 "310d502f7ac0b71321051058c14ac63f458645fc229a1dc2cbd6c1702eb592af"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

