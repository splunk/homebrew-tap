class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.16.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.16.0/acs_v2.16.0_darwin_amd64.tar.gz"
    sha256 "af877f1ed3f35659719c51a797ce358e35badf26ce2a394729c3aa99cb8807f9"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.16.0/acs_v2.16.0_linux_amd64.tar.gz"
    sha256 "80bcfd6591ec305aacf4a55b2483e3f94cb0b496231aed7be90bf9294f779d70"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

