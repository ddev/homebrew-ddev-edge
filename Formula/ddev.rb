# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddev < Formula
  desc "DDEV"
  homepage "https://github.com/ddev/ddev"
  version "1.23.5"
  license "Apache 2"

  depends_on "mkcert"

  on_macos do
    on_intel do
      url "https://github.com/ddev/ddev/releases/download/v1.23.5/ddev_macos-amd64.v1.23.5.tar.gz"
      sha256 "fab0a3f38743e28cd22790bcfa72295d1cbacc7defe9f8288f99d5a150e8c3a4"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "build", "completions"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
            bash_completion.install ".gotmp/bin/completions/ddev_bash_completion.sh" => "ddev"
            zsh_completion.install ".gotmp/bin/completions/ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install ".gotmp/bin/completions/ddev_fish_completion.sh" => "ddev.fish"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
    on_arm do
      url "https://github.com/ddev/ddev/releases/download/v1.23.5/ddev_macos-arm64.v1.23.5.tar.gz"
      sha256 "97bfa30dd00fa18d6473952660fb85d5218cf002e9287bd456439a3c0fc701ad"

      def install
        if build.head?
            os = OS.mac? ? "darwin" : "linux"
            arch = Hardware::CPU.arm? ? "arm64" : "amd64"
            system "mkdir", "-p", "#{bin}"
            system "make", "build", "completions"
            system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
            bash_completion.install ".gotmp/bin/completions/ddev_bash_completion.sh" => "ddev"
            zsh_completion.install ".gotmp/bin/completions/ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install ".gotmp/bin/completions/ddev_fish_completion.sh" => "ddev.fish"
        else
            bin.install "ddev"
            bash_completion.install "ddev_bash_completion.sh" => "ddev"
            zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
            fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
        end
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ddev/ddev/releases/download/v1.23.5/ddev_linux-amd64.v1.23.5.tar.gz"
        sha256 "15319d073452e77d7342c8b9176fff63d890c3e06a65e31b6f1995f7ac4c26f5"

        def install
          if build.head?
              os = OS.mac? ? "darwin" : "linux"
              arch = Hardware::CPU.arm? ? "arm64" : "amd64"
              system "mkdir", "-p", "#{bin}"
              system "make", "build", "completions"
              system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
              bash_completion.install ".gotmp/bin/completions/ddev_bash_completion.sh" => "ddev"
              zsh_completion.install ".gotmp/bin/completions/ddev_zsh_completion.sh" => "_ddev"
              fish_completion.install ".gotmp/bin/completions/ddev_fish_completion.sh" => "ddev.fish"
          else
              bin.install "ddev"
              bash_completion.install "ddev_bash_completion.sh" => "ddev"
              zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
              fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
          end
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ddev/ddev/releases/download/v1.23.5/ddev_linux-arm64.v1.23.5.tar.gz"
        sha256 "0f9466a5da19f54e0829e132669c4bd15dae8b8f138e9fe006260e76ef10ea43"

        def install
          if build.head?
              os = OS.mac? ? "darwin" : "linux"
              arch = Hardware::CPU.arm? ? "arm64" : "amd64"
              system "mkdir", "-p", "#{bin}"
              system "make", "build", "completions"
              system "cp", ".gotmp/bin/" + os + "_" + arch + "/ddev", "#{bin}/ddev"
              bash_completion.install ".gotmp/bin/completions/ddev_bash_completion.sh" => "ddev"
              zsh_completion.install ".gotmp/bin/completions/ddev_zsh_completion.sh" => "_ddev"
              fish_completion.install ".gotmp/bin/completions/ddev_fish_completion.sh" => "ddev.fish"
          else
              bin.install "ddev"
              bash_completion.install "ddev_bash_completion.sh" => "ddev"
              zsh_completion.install "ddev_zsh_completion.sh" => "_ddev"
              fish_completion.install "ddev_fish_completion.sh" => "ddev.fish"
          end
        end
      end
    end
  end

  head "https://github.com/ddev/ddev.git", branch: "master"
  depends_on "go" => :build
  depends_on "make" => :build

  test do
    system "#{bin}/ddev --version"
  end
end
