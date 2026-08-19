class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.26.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/splunk/acs-cli/releases/download/v2.26.0/acs_v2.26.0_darwin_arm64.tar.gz"
      sha256 "295aaff80bbcb444529e91e9666b7ed3f0cdb59da960b5fe5aa0e767de9aea96"
    else
      url "https://github.com/splunk/acs-cli/releases/download/v2.26.0/acs_v2.26.0_darwin_amd64.tar.gz"
      sha256 "792a05020b9c7ae4ce0ae2ea47daae914d4d96f45df3a32e82e5de2506cc0b18"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/splunk/acs-cli/releases/download/v2.26.0/acs_v2.26.0_linux_arm64.tar.gz"
      sha256 "c4d2c48facc4b411544d9223d70a2de35aaa9d386ae6028c030fdfa88975ef65"
    else
      url "https://github.com/splunk/acs-cli/releases/download/v2.26.0/acs_v2.26.0_linux_amd64.tar.gz"
      sha256 "9450ee04be42c633af4b0db932d28139232815704bc4410c0908ea8ee38a8e49"
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
