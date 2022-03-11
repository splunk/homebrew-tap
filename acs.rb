class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.0.0-beta.2"

  if OS.mac?
    url "https://github.com/splunk/acs-cli/releases/download/v2.0.0-beta.2/acs_v2.0.0-beta.2_darwin_amd64.tar.gz"
    sha256 "e733a93b2da124167dd3ed9b738d72b3492c918b21f7910023e285350b523748"
  elsif OS.linux?
    url "https://github.com/splunk/acs-cli/releases/download/v2.0.0-beta.2/acs_v2.0.0-beta.2_linux_amd64.tar.gz"
    sha256 "068f5ad4142b80e782bc94ea7faefa46652af86418d51dd9f61e1e263137a08b"
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end

