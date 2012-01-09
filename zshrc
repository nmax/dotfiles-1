. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

case `hostname -s` in
  flo-mb) export EMAIL="mail@florian-duetsch.de" ;;
  flo) export EMAIL="florian.duetsch@nix-wie-weg.de" ;;
esac

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

android_path=$HOME/soft/android-sdk-macosx
if [[ -d $android_path ]]; then
  export PATH=$PATH:$android_path/tools:$android_path/platform-tools
fi

