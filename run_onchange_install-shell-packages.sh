#!/bin/bash
set -eufo pipefail

ghosttyThemesDir="$HOME/.config/ghostty/themes"
githubRepository="https://raw.githubusercontent.com/carloscuesta/materialshell/refs/heads/master/shell-color-themes/ghostty"
themes=(
  "materialshell-dark"
  "materialshell-light"
)

downloadTheme() {
  local theme=$1
  echo "⬇️  Downloading $theme"
  if curl -L --fail -o "$ghosttyThemesDir/$theme" "$githubRepository/$theme"; then
    echo "✅  Successfully installed $theme"
  else
    echo "❌  Failed to download $theme"
    return 1
  fi
}

if [ ! -d "$ghosttyThemesDir" ]; then
  mkdir -p "$ghosttyThemesDir"
  echo "✅  Created /ghostty/themes directory"
fi

echo "🎨  Installing materialshell themes for Ghostty"

for theme in "${themes[@]}"; do
    downloadTheme "$theme"
done

echo "✅  Themes downloaded successfully."

if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
  echo "💬  Installing zsh-autosuggestions plugin"

  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

  echo "✅  Plugin zsh-autosuggestions installed."
fi

