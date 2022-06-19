#
# Assumed Installed...
#

# check whether "which" is installed or not...
which which
if [ $? -eq 0 ]; then
  alias w=which
else
  exit -1
fi

#
# git
#
if [ -e "$(which git)" ]; then
  alias g.='git init .'
  alias gst='git status'
  alias ga+='git add *'
  alias g+='git add '
  alias g-='git diff '
  alias gcm='git commit -m'
  alias gpush='git push -u'
  alias gr+='git remote add'
  alias gcln='git clone'
  alias gpl='git pull'
fi

#
# exa/ls
#
if [ -e "$(which exa)" ]; then
  alias l="exa -alih"
  alias sl="sudo exa -alih"
elif [ -e "$(which ls)" ]; then
  alias l="exa -alih"
  alias sl="sudo exa -alih"
fi

#
# bat/cat
#
if [ -e "$(which bat)" ]; then
  alias r=bat
elif [ -e "$(which cat)" ]; then
  alias r=cat
fi

#
# pacman/apt
#
if [ -e "$(which pacman)" ]; then
  alias pup='sudo pacman -Syu'
  alias pin='sudo pacman -S'
  alias pfnd='pacman -Ss'
  alias pfl='sudo pacman -F'
  alias pfly='sudo pacman -Fyy'
  alias pfltr='pacman -Qs'
  alias prm='sudo pacman -R'
  alias prmx='sudo pacman -Rns $(pacman -Qtdq)'
  alias pc='sudo pacman -Sc'
  alias pcx='sudo pacman -Scc'
elif [ -e "$(which apt)" ]; then
  alias pup='sudo apt update && sudo apt dist-upgrade'
  alias pin='sudo apt install'
fi

#
# yay
#
if [ -e "$(which yay)" ]; then
  alias yup='yay -Syu'
  alias yin='yay -S'
  alias yfnd='yay -Ss'
  alias yfl='yay -F'
  alias yfly='yay -Fyy'
  alias yfltr='yay -Qs'
  alias yrm='yay -R'
  alias yrmx='yay -Rns $(yay -Qtdq)'
  alias yc='yay -Sc'
  alias ycx='yay -Scc'
fi

#
# chmod
#
if [ -e "$(which chmod)" ]; then
  alias mie="chmod +x "
fi

#
# nvim
#
if [ -e "$(which nvim)" ]; then
  alias v=nvim
  alias sv='sudo nvim'
fi

#
# helix
#
if [ -e "$(which helix)" ]; then
  alias h=helix
  alias sh='sudo helix'
fi

#
# vscode/vscodium
#
if [ -e "$(which vscodium)" ]; then
  alias vc=vscodium
elif [ -e "$(which code)" ]; then
  alias vc=code
fi

#
# clear
#
if [ -e "$(which clear)" ]; then
  alias c.=clear
  alias cls=clear
fi
