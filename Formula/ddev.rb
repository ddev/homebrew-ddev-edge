# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddev < Formula
  desc "DDEV"
  homepage "https://github.com/drud/ddev"
  version "1.19.4-alpha5"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/drud/ddev/releases/download/v1.19.4-alpha5/ddev_macos-amd64.v1.19.4-alpha5.tar.gz"
      sha256 "39d0518afb1090d877e20e4f55743fcfa7ea3d3cb7f8c8686e5169d432d5dc5d"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "VERSION=v#{version}", "COMMIT=v#{version}"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev"
        end
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/drud/ddev/releases/download/v1.19.4-alpha5/ddev_macos-arm64.v1.19.4-alpha5.tar.gz"
      sha256 "f86da814afec615bd329b89707fba2891234d1bef4f159cf12cd9f3bfeea01b1"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "VERSION=v#{version}", "COMMIT=v#{version}"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev"
        end
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/drud/ddev/releases/download/v1.19.4-alpha5/ddev_linux-arm64.v1.19.4-alpha5.tar.gz"
      sha256 "b6eaf34623187e04202378ea50bc606a4250a824f1d4cdcbfa9d986559c53bc6"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "VERSION=v#{version}", "COMMIT=v#{version}"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev"
        end
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/drud/ddev/releases/download/v1.19.4-alpha5/ddev_linux-amd64.v1.19.4-alpha5.tar.gz"
      sha256 "7e3923e962c2818e6654effffb1e762c3c7a7820e1645b7c603e1b7824377f02"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "VERSION=v#{version}", "COMMIT=v#{version}"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev"
        end
      end
    end
  end

  head "https://github.com/drud/ddev.git", branch: "master"
  depends_on "go" => :build
  depends_on "make" => :build

  depends_on "mkcert"

  test do
    system "#{bin}/ddev --version"
  end
end
