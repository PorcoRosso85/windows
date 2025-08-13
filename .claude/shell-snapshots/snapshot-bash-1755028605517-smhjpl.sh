# Snapshot file
# Unset all aliases to avoid conflicts with functions
unalias -a 2>/dev/null || true
shopt -s expand_aliases
# Check for rg availability
if ! command -v rg >/dev/null 2>&1; then
  alias rg=''\''C:\Users\tetsuya.takasawa\AppData\Local\pnpm-cache\dlx\2ed1227380015cf196c1435486d9a51c2aaa382442339d0d982168a01dceef58\1989fdb0b47-204\node_modules\.pnpm\@anthropic-ai+claude-code@1.0.77\node_modules\@anthropic-ai\claude-code\vendor\ripgrep\x64-win32\rg.exe'\'''
fi
export PATH=$PATH
