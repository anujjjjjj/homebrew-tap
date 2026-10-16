class Fanoutfuse < Formula
  desc "Local circuit breaker for runaway subagent sessions"
  homepage "https://github.com/anujjjjjj/fanoutfuse"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/anujjjjjj/fanoutfuse/releases/download/v0.1.0/fanoutfuse_0.1.0_darwin_arm64.tar.gz"
      sha256 "f9641a60eb58068d7f04d15876cb32f8cf9b44d7fd902c2beb9104b922321b20"
    end
    on_intel do
      url "https://github.com/anujjjjjj/fanoutfuse/releases/download/v0.1.0/fanoutfuse_0.1.0_darwin_amd64.tar.gz"
      sha256 "f80ed443906edeab93ad1c120b15b18b76a94a5da7199a2f22fb818b413072d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anujjjjjj/fanoutfuse/releases/download/v0.1.0/fanoutfuse_0.1.0_linux_arm64.tar.gz"
      sha256 "5dc0708298efa252aa0a9732c2ab76faffe2eea7d5c13d3557bb07a29f73db5a"
    end
    on_intel do
      url "https://github.com/anujjjjjj/fanoutfuse/releases/download/v0.1.0/fanoutfuse_0.1.0_linux_amd64.tar.gz"
      sha256 "3c71ec09e7eb07cece3b5bc931b585051b5681b2afff3792ab3f13fc8337833a"
    end
  end

  def install
    bin.install "fanoutfuse"
  end

  test do
    system bin/"fanoutfuse", "config", "--explain"
  end
end
