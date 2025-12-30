class Codemate < Formula
  desc "AI-powered code intelligence and graph analysis tool"
  homepage "https://github.com/StanleyXie/CodeMate"
  version "0.1.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/StanleyXie/CodeMate/releases/download/v0.1.0/codemate-aarch64-apple-darwin.tar.gz"
      sha256 "1d364799c9a552f17b2c353185c51386fefdd60848b48636fa64e28a8d0b5f9b"
    else
      url "https://github.com/StanleyXie/CodeMate/releases/download/v0.1.0/codemate-x86_64-apple-darwin.tar.gz"
      sha256 "47052a2144990b56fe903f84685084ed17f4606d39214208c88c72b941dad086"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/StanleyXie/CodeMate/releases/download/v0.1.0/codemate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "188218d6667ce40772e07a820e0845b04a18a2f154297d9aa000212a47919132"
    end
  end

  def install
    bin.install "codemate"
    bin.install "codemate-server"
  end

  test do
    system "#{bin}/codemate", "--version"
    system "#{bin}/codemate-server", "--version"
  end
end
