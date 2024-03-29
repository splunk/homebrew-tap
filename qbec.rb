# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qbec < Formula
  desc "Qbec (pronounced like the Canadian province) is a CLI tool that allows you to create Kubernetes objects on multiple Kubernetes clusters or namespaces configured correctly for the target environment in question."
  homepage "https://qbec.io/"
  version "0.15.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/splunk/qbec/releases/download/v0.15.2/qbec-darwin-arm64.tar.gz"
      sha256 "864300407d6313c70fc8b664a6d8704a50c321b630ae2e385cf61884737ece18"

      def install
        bin.install "qbec"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/splunk/qbec/releases/download/v0.15.2/qbec-darwin-amd64.tar.gz"
      sha256 "f0dac5772cb7444e02fbdf0ebb849c5540c429789f8b85907d0c6b6d419f21c6"

      def install
        bin.install "qbec"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/splunk/qbec/releases/download/v0.15.2/qbec-linux-amd64.tar.gz"
      sha256 "ac19255fbeabc1d864def149896928638323866333c350a951bbf64e8af345a3"

      def install
        bin.install "qbec"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/splunk/qbec/releases/download/v0.15.2/qbec-linux-arm64.tar.gz"
      sha256 "1d231b3f1981940f5a2464549682048d15e9bfd607e2770073f8e9e56118af7c"

      def install
        bin.install "qbec"
      end
    end
  end

  test do
    system "#{bin}/qbec version"
  end
end
