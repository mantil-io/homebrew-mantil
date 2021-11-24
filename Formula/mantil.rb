# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mantil < Formula
  desc "Mantil CLI"
  homepage ""
  version "0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "releases.mantil.io/v0.2/mantil_0.2_Darwin_arm64.tar.gz"
      sha256 "efdcc00a3913ad273fab4d33f5c48565e40b30e3b04fd61d926c7f617e00f57c"

      def install
        bin.install "mantil"
      end
    end
    if Hardware::CPU.intel?
      url "releases.mantil.io/v0.2/mantil_0.2_Darwin_x86_64.tar.gz"
      sha256 "0feb97eb19790b6a88d2a621d43baf238c90b0dbf5fd37d5dc48c5545dbe0a80"

      def install
        bin.install "mantil"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "releases.mantil.io/v0.2/mantil_0.2_Linux_arm64.tar.gz"
      sha256 "5fd81eddf80db7683aaeb18ff09e54f1393fc6624f1eda145e8287c0ebbf6067"

      def install
        bin.install "mantil"
      end
    end
    if Hardware::CPU.intel?
      url "releases.mantil.io/v0.2/mantil_0.2_Linux_x86_64.tar.gz"
      sha256 "394f832ac234d982559ba6884280458936fa0119c93fdad2a53af659d58cd439"

      def install
        bin.install "mantil"
      end
    end
  end

  depends_on "go"
end
