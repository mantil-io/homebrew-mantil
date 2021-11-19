# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mantil < Formula
  desc "Mantil CLI"
  homepage ""
  version "0.1.25"

  on_macos do
    if Hardware::CPU.arm?
      url "releases.mantil.io/v0.1.25/mantil_0.1.25_Darwin_arm64.tar.gz"
      sha256 "e22826735b3ee9bc97ca8e9be5ecc64034a1ef3143d5e293d2618a3fc1b21f28"

      def install
        bin.install "mantil"
      end
    end
    if Hardware::CPU.intel?
      url "releases.mantil.io/v0.1.25/mantil_0.1.25_Darwin_x86_64.tar.gz"
      sha256 "f67dcf50e50119ae11a8ebd88f74074619ca26919a34f8bf729df6f7aee6033d"

      def install
        bin.install "mantil"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "releases.mantil.io/v0.1.25/mantil_0.1.25_Linux_arm64.tar.gz"
      sha256 "a984085eb2b7aff4f7d0fa0d090fe7d9aa92e5d5a5194c894015aed5ff1a040c"

      def install
        bin.install "mantil"
      end
    end
    if Hardware::CPU.intel?
      url "releases.mantil.io/v0.1.25/mantil_0.1.25_Linux_x86_64.tar.gz"
      sha256 "f4af0cd2f27a8c972aeb4aad9065e00fb2a5be80f9627be9392506dd96d365d2"

      def install
        bin.install "mantil"
      end
    end
  end

  depends_on "go"
end
