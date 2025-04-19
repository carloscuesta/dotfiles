set -euo pipefail
source "$UTILS"

install_xcode_cli_tools() {
  if cmd_exists "xcode-select"; then
    print_success 'Xcode Command Line Tools already installed'
  else
    xcode-select --install &> /dev/null

    while ! xcode-select -p &> /dev/null; do
      sleep 5
    done

    print_success 'Xcode Command Line Tools installed'
  fi
}

install_xcode_cli_tools
