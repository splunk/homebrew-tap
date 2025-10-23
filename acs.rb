class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.20.2"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.20.2/acs_v2.20.2_darwin_amd64.tar.gz"
    sha256 "f7bdde1945f099fbf42f451052e1e31bf00333f47d921138dee4821144a3fe92"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.20.2/acs_v2.20.2_linux_amd64.tar.gz"
    sha256 "3f873e904840e6f4257b02e8f7f9a09ac554b05be41105a028329400888922e2"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

