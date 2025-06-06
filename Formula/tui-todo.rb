# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TuiTodo < Formula
  desc "A feature-rich terminal-based todo application built with Go.
Organize tasks with tags, priorities, and due dates without leaving your terminal.
"
  homepage "https://github.com/martijnspitter/tui-todo"
  version "0.0.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martijnspitter/tui-todo/releases/download/v0.0.31/tui-todo_Darwin_x86_64.tar.gz"
      sha256 "454b5805908c6ce63b602ca012b07e2005e6464f9f1c5fb75be895bdbb54c03b"

      def install
        bin.install "tui-todo" => "todo"  # This renames the binary when installing
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/martijnspitter/tui-todo/releases/download/v0.0.31/tui-todo_Darwin_arm64.tar.gz"
      sha256 "6d7e4fb9208d03abc1719bb43f5abec336a4aa4051e559f1dcde8c1d80650efc"

      def install
        bin.install "tui-todo" => "todo"  # This renames the binary when installing
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/martijnspitter/tui-todo/releases/download/v0.0.31/tui-todo_Linux_x86_64.tar.gz"
      sha256 "69663ba14c2f921607f91711344bf47f21e4dabbe013cb83d2a84e7928827855"
      def install
        bin.install "tui-todo" => "todo"  # This renames the binary when installing
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/martijnspitter/tui-todo/releases/download/v0.0.31/tui-todo_Linux_arm64.tar.gz"
      sha256 "0bf22ec1961744455700ba9c1277fdbb30527c218df8aefcf8193f6f687c0ce4"
      def install
        bin.install "tui-todo" => "todo"  # This renames the binary when installing
      end
    end
  end

  def caveats
    <<~EOS
      Thank you for installing TUI Todo!
      Run 'todo' to start the application.
    EOS
  end

  test do
    system "#{bin}/todo", "--version"
  end
end
