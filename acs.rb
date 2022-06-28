class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.4.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.4.0/acs_v2.4.0_darwin_amd64.tar.gz"
    sha256 "db977163abd25d3d11cbb95b9993a66f7642ac20540ccab8a9253022944539c1"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.4.0/acs_v2.4.0_linux_amd64.tar.gz"
    sha256 "06a32616baa58d9f37a51431d5f6438a2190973d41f7c09d1760bdd7d4ca538a"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

