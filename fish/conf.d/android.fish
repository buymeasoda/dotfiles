# Android Tools (Install via Android Studio)
set -x ANDROID_HOME $HOME/Library/Android/sdk

# Paths
fish_add_path --path --append $ANDROID_HOME/emulator
fish_add_path --path --append $ANDROID_HOME/platform-tools
