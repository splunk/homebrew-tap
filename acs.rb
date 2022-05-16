class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.3.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.3.0/acs_v2.3.0_darwin_amd64.tar.gz"
    sha256 "e285411d975e667b8f74c968739b02bd4782ab5494b1a7b5bb588235f4b345f7"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.3.0/acs_v2.3.0_linux_amd64.tar.gz"
    sha256 "487ccc2d52d9d4e5cf307d375d602993424f5bffd050daa26504537b120c7423"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

