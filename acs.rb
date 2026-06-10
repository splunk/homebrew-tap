class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.23.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/splunk/acs-cli/releases/download/v2.23.0/acs_v2.23.0_darwin_arm64.tar.gz"
      sha256 "08a001757d4208041bd20c8756f147cf4ea6186b2ec0e5fcc0477a26fe6e1b30"
    else
      url "https://github.com/splunk/acs-cli/releases/download/v2.23.0/acs_v2.23.0_darwin_amd64.tar.gz"
      sha256 "214af04cac6d24d2dd4e4864b522a8b02256885fa12cc9c4b61214549dc73306"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/splunk/acs-cli/releases/download/v2.23.0/acs_v2.23.0_linux_arm64.tar.gz"
      sha256 "4d9e5169a1f026418cac3a8ed1e045f7846053e1d96b55d1056d88b8256670a1"
    else
      url "https://github.com/splunk/acs-cli/releases/download/v2.23.0/acs_v2.23.0_linux_amd64.tar.gz"
      sha256 "6ccd3bb1bcdf89c0dd978354ae6e1c0bc193fc932b8c53106083713bbe2e28ee"
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
