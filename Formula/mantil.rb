# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mantil < Formula
  desc "Mantil CLI"
  homepage ""
  version "0.1.5"
  bottle :unneeded
  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://mantil-downloads.s3.eu-central-1.amazonaws.com/releases/cli/0.1.5/mantil_0.1.5_Darwin_x86_64.tar.gz"
      sha256 "4fd59390b2ed68f18bf195e8547d4aae093499cf4c56953c8d38f46c96500de1"
    end
    if Hardware::CPU.arm?
      url "https://mantil-downloads.s3.eu-central-1.amazonaws.com/releases/cli/0.1.5/mantil_0.1.5_Darwin_arm64.tar.gz"
      sha256 "93f5ba03aa866add57c5653b9a61b0151100e5e9694a62b45bd756dd369a5e38"
    end
  end

  depends_on "go"

  def install
    bin.install "mantil"
  end
end
