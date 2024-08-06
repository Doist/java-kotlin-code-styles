#!/bin/bash
# Installs Doist's IntelliJ configs into your user configs.

echo "Installing Doist code style configs..."

CONFIGS="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/configs"

for i in $HOME/Library/Preferences/IntelliJIdea* \
  $HOME/Library/Preferences/IdeaIC* \
  $HOME/Library/Preferences/AndroidStudio* \
  $HOME/Library/Application\ Support/JetBrains/IntelliJIdea* \
  $HOME/Library/Application\ Support/JetBrains/IdeaIC* \
  $HOME/Library/Application\ Support/Google/AndroidStudio* \
  $HOME/.IntelliJIdea*/config \
  $HOME/.IdeaIC*/config \
  $HOME/.AndroidStudio*/config \
  $HOME/.config/Google/AndroidStudio* \
  $HOME/.config/JetBrains/IdeaIC* \
  $HOME/.config/JetBrains/IntelliJIdea*; do
  if [[ -d $i ]]; then
    # Install codestyles
    mkdir -p $i/codestyles
    cp -frv "$CONFIGS/codestyles"/* "$i/codestyles" 2>/dev/null
  fi
done

echo "Installing Doist inspection configs..."

CONFIGS="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/inspection"

for i in $HOME/Library/Preferences/IntelliJIdea* \
  $HOME/Library/Preferences/IdeaIC* \
  $HOME/Library/Preferences/AndroidStudio* \
  $HOME/Library/Application\ Support/JetBrains/IntelliJIdea* \
  $HOME/Library/Application\ Support/JetBrains/IdeaIC* \
  $HOME/Library/Application\ Support/Google/AndroidStudio* \
  $HOME/.IntelliJIdea*/config \
  $HOME/.IdeaIC*/config \
  $HOME/.AndroidStudio*/config \
  $HOME/.config/Google/AndroidStudio* \
  $HOME/.config/JetBrains/IdeaIC* \
  $HOME/.config/JetBrains/IntelliJIdea*; do
  if [[ -d $i ]]; then
    # Install inspection
    mkdir -p $i/inspection
    cp -frv "$CONFIGS/inspection"/* "$i/inspection" 2>/dev/null
  fi
done

echo "Done."
echo ""
echo "Restart IntelliJ and/or Android Studio, go to preferences -> Code Style and apply 'DoistStyle'"
echo "If in an Android-only project, also go to preferences -> Inspections and apply 'Doist Android'"
