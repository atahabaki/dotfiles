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
