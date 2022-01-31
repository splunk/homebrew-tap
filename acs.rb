class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.0.0-beta.0"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.0.0-beta.0/acs_v2.0.0-beta.0_darwin_amd64.tar.gz"
    sha256 "0e27d53957f05e27e9f8b76de39e22dcd39f825f02b1d6d95358d9bad8c0d5e2"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.0.0-beta.0/acs_v2.0.0-beta.0_linux_amd64.tar.gz"
    sha256 "ddd4ddc632cfbb1e9d1af7a1c0cefe5bffcc8c62917c1c01ab7a72c006e7ce88"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

