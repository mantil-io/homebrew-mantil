# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mantil < Formula
  desc "Mantil CLI"
  homepage ""
  version "0.1.10"
  bottle :unneeded
  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://mantil-downloads.s3.eu-central-1.amazonaws.com/releases/cli/v0.1.10/mantil_0.1.10_Darwin_x86_64.tar.gz"
      sha256 "32e1141a6fff0e9201c596b37d15ccee58fafc900feecb4768fa3dd91fc1d67b"
    end
    if Hardware::CPU.arm?
      url "https://mantil-downloads.s3.eu-central-1.amazonaws.com/releases/cli/v0.1.10/mantil_0.1.10_Darwin_arm64.tar.gz"
      sha256 "69dd729a464c6cd9fbd411a3d1a9de817fabb4d282c0fefd2e3be6aed0e7dd7b"
    end
  end

  depends_on "go"

  def install
    bin.install "mantil"
  end
end
