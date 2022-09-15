class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.6.1"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.6.1/acs_v2.6.1_darwin_amd64.tar.gz"
    sha256 "7de09e68b79a2cf667ae8fb1cf1a4886319f9c82ea4c4d9a5cf439bc852889d3"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.6.1/acs_v2.6.1_linux_amd64.tar.gz"
    sha256 "40b154754e3327ff5dca2447c0ac01825b55bd6aed82bdabc42462ddae0ec11f"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

