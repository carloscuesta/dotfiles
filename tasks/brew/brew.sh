set -euo pipefail
source "$UTILS"

BREWFILE="${EXECUTION_DIR}/tasks/brew/Brewfile"

install_homebrew() {
  print_info 'Homebrew install'

  if cmd_exists "brew"; then
    print_success 'Brew is already installed'
  else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    if cmd_exists "brew"; then
      print_success 'Brew succesfully installed!'
    else
      print_error 'Brew failted to install.'
    fi
  fi
}

install_brewfile() {
  print_info 'Brewfile install'

  if [ -f "$BREWFILE" ]; then
    brew bundle --file="$BREWFILE"
    print_success 'Brewfile installed'
  else
    print_error 'Brewfile not found'
  fi
}

install_homebrew
install_brewfile
execute "brew cleanup"
