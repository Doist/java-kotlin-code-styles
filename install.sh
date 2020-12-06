#!/bin/bash
# Installs Doist's IntelliJ configs into your user configs.

echo "Installing Doist code style configs..."

for i in $HOME/Library/Preferences/IntelliJIdea* \
  $HOME/Library/Preferences/IdeaIC* \
  $HOME/Library/Preferences/AndroidStudio* \
  $HOME/Library/Application\ Support/JetBrains/IntelliJIdea* \
  $HOME/.IntelliJIdea*/config \
  $HOME/.IdeaIC*/config \
  $HOME/.AndroidStudio*/config \
  $HOME/Library/Application\ Support/Google/AndroidStudio* \
  $HOME/Library/Application\ Support/JetBrains/IdeaIC*; do
  if [[ -d $i ]]; then
    # Install codestyles
    mkdir -p $i/codestyles
    cp -frv $(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/configs/* $i/codestyles 2>/dev/null
  fi
done

echo "Done."
echo ""
echo "Restart IntelliJ and/or AndroidStudio, go to preferences, and apply 'DoistStyle'."
