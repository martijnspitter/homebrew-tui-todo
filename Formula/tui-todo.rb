# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TuiTodo < Formula
  desc "A feature-rich terminal-based todo application built with Go.
Organize tasks with tags, priorities, and due dates without leaving your terminal.
"
  homepage "https://github.com/martijnspitter/tui-todo"
  version "0.0.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martijnspitter/tui-todo/releases/download/v0.0.27/tui-todo_Darwin_x86_64.tar.gz"
      sha256 "36ac3502a8bad6920a3be099b363dd104de0b02ad2f6fa1ca4f4f97c71cdcff3"

      def install
        bin.install "tui-todo" => "todo"  # This renames the binary when installing
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/martijnspitter/tui-todo/releases/download/v0.0.27/tui-todo_Darwin_arm64.tar.gz"
      sha256 "3b9513f4437892f88a21c2e369824259b513d613e31aba9e77a9e9a23bc41ad1"

      def install
        bin.install "tui-todo" => "todo"  # This renames the binary when installing
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/martijnspitter/tui-todo/releases/download/v0.0.27/tui-todo_Linux_x86_64.tar.gz"
      sha256 "65b8a6b9fda60e671cc13a133d2630629c333612b1f4f7eb0e25fc42661c0540"
      def install
        bin.install "tui-todo" => "todo"  # This renames the binary when installing
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/martijnspitter/tui-todo/releases/download/v0.0.27/tui-todo_Linux_arm64.tar.gz"
      sha256 "9be9e270213058888e002538462f9b77dd92e56406b4a9dde46788270f80fe1d"
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
