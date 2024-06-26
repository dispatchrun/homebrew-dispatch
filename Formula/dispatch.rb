# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dispatch < Formula
  desc "A platform for developing scalable & reliable distributed systems."
  homepage "https://dispatch.run"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/dispatchrun/dispatch/releases/download/v0.3.0/dispatch_0.3.0_darwin_amd64.tar.gz"
      sha256 "1b2e4a7c1533aa511a3027de4e7d0b2fd5434c7a3566d128bca4f3f0918a4b91"

      def install
        bin.install "dispatch"
      end
    end
    on_arm do
      url "https://github.com/dispatchrun/dispatch/releases/download/v0.3.0/dispatch_0.3.0_darwin_arm64.tar.gz"
      sha256 "3b442517caa32c01d50baf31bdb97f80d0c2bce5cac8bb3fb2dd2f6355da5d2f"

      def install
        bin.install "dispatch"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dispatchrun/dispatch/releases/download/v0.3.0/dispatch_0.3.0_linux_amd64.tar.gz"
        sha256 "957adb8750983ca922ec87b515969a00eaec4536aef972f600c05c144a261c74"

        def install
          bin.install "dispatch"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dispatchrun/dispatch/releases/download/v0.3.0/dispatch_0.3.0_linux_arm64.tar.gz"
        sha256 "7ed95b0a8f86536789cef6e0bfb5ca4d4c3d3cf14341c6c4d5c98f47ed3cb806"

        def install
          bin.install "dispatch"
        end
      end
    end
  end

  test do
    system "#{bin}/dispatch", "--version"
  end
end
