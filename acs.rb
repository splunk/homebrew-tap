class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.2.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.2.0/acs_v2.2.0_darwin_amd64.tar.gz"
    sha256 "963586f46529b8ff810f5a54a1147ca01320d320852195e03358df67b5943818"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.2.0/acs_v2.2.0_linux_amd64.tar.gz"
    sha256 "7005c1556758f822ae0c7adb9252d206f7d0a3f0be5ca77b0caa47c07d7d77ee"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

