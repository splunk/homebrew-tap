class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.25.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/splunk/acs-cli/releases/download/v2.25.0/acs_v2.25.0_darwin_arm64.tar.gz"
      sha256 "3834f5d221fbdcd6fa851908572849b1c7f359b735aeff19cd99c3c17a711ea0"
    else
      url "https://github.com/splunk/acs-cli/releases/download/v2.25.0/acs_v2.25.0_darwin_amd64.tar.gz"
      sha256 "67355053cd0c1b810a1d720c62468cace8552b134f1794cb16d8c32fdf61f228"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/splunk/acs-cli/releases/download/v2.25.0/acs_v2.25.0_linux_arm64.tar.gz"
      sha256 "e63c84526684e01991784317bbc79d342a0f9349bd40f60bd444a43452a0d819"
    else
      url "https://github.com/splunk/acs-cli/releases/download/v2.25.0/acs_v2.25.0_linux_amd64.tar.gz"
      sha256 "c428cb92067118c6f3c6ef1a486478577708dbca1282ebae9ec9c5a0ae91d53a"
    end
  end

  def install
    bin.install "acs"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/acs version"
  end
end
