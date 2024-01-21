# Android Tools (Install via Android Studio)
set -x ANDROID_HOME $HOME/Library/Android/sdk

# Java
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

# Paths
fish_add_path --path --append $ANDROID_HOME/emulator
fish_add_path --path --append $ANDROID_HOME/platform-tools
