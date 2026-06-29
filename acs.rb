class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.24.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/splunk/acs-cli/releases/download/v2.24.0/acs_v2.24.0_darwin_arm64.tar.gz"
      sha256 "93cee86ad44df757eec41e40a78442e3deaf1502fdb3d6c39041831d26d20805"
    else
      url "https://github.com/splunk/acs-cli/releases/download/v2.24.0/acs_v2.24.0_darwin_amd64.tar.gz"
      sha256 "88ab5fe7328caf0e6207ff5cca98376e4dc831ae09449d350362c369cb734566"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/splunk/acs-cli/releases/download/v2.24.0/acs_v2.24.0_linux_arm64.tar.gz"
      sha256 "6dbddce7132303bb4454df9429726b2390e662daf6708682689dc1f36f0312b7"
    else
      url "https://github.com/splunk/acs-cli/releases/download/v2.24.0/acs_v2.24.0_linux_amd64.tar.gz"
      sha256 "fd9871c87e338d730d881a13498bca22ac22a102c89edf658a122a3c58f26f53"
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
