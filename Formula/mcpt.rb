class Mcpt < Formula
  desc "MCP server for git operations"
  homepage "https://github.com/anhpngt/mcp-server"
  url "https://github.com/anhpngt/mcpt-releases/releases/download/v0.0.5/mcpt_v0.0.5_darwin_arm64.tar.gz"
  sha256 "cdc89674ce91f3ea4b2dd137e2bc40c3152f97d860ee8a26e4984b24dc939571"
  version "0.0.5"
  license "MIT"

  def install
    bin.install "mcpt"
  end

  def caveats
    <<~EOS
      To use mcpt as an MCP server in Claude Code, run:
        claude mcp add mcpt #{opt_bin}/mcpt

      To verify it was added:
        claude mcp list
    EOS
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mcpt --version", 2)
  end
end
