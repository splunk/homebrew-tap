class Acs < Formula

  desc "Splunk Admin Config Service CLI"
  homepage "https://github.com/splunk/acs-cli"
  version "2.22.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/splunk/acs-cli/releases/download/v2.22.0/acs_v2.22.0_darwin_arm64.tar.gz"
      sha256 "ba05f7dc8e7f1921f7a5cae2db1395f04ffb201789d156528e111da4a45bf12f"
    else
      url "https://github.com/splunk/acs-cli/releases/download/v2.22.0/acs_v2.22.0_darwin_amd64.tar.gz"
      sha256 "c1897188dde3527fd874aea5b5260208a0aef8ae339da57db8798de091f0cfa6"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/splunk/acs-cli/releases/download/v2.22.0/acs_v2.22.0_linux_arm64.tar.gz"
      sha256 "61f9a75305fbdf017dc03155f5352dbaceb0f5faa4977d442f77e85ff992089f"
    else
      url "https://github.com/splunk/acs-cli/releases/download/v2.22.0/acs_v2.22.0_linux_amd64.tar.gz"
      sha256 "4a63bbce0a2a8dcb795df371f5580c185aa24ead1b06a4a3a8052341e84fe862"
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
