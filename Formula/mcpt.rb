class Mcpt < Formula
  desc "MCP server for git operations"
  homepage "https://github.com/anhpngt/mcp-server"
  url "https://github.com/anhpngt/mcpt-releases/releases/download/v0.0.0/mcpt_v0.0.0_darwin_arm64.tar.gz"
  sha256 "PLACEHOLDER"
  version "0.0.0"
  license "MIT"

  def install
    bin.install "mcpt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpt --version", 2)
  end
end
