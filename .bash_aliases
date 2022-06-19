#
# Assumed Installed...
#

# check whether "which" is installed or not...
which which
if [ $? -eq 0 ]
then
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
# exa
#
if [ -e "$(which exa)" ]; then
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
