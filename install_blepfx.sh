# tiny install script for blepfx plugins
# installs:
# spectra : curl https://fx.amee.ee/spectra.sh | sh
# prisma : curl https://fx.amee.ee/prisma.sh | sh
# filtrr : curl https://fx.amee.ee/filtrr.sh | sh
# crunchrr : curl https://fx.amee.ee/crunchrr.sh | sh
# destruqtor : curl https://fx.amee.ee/destruqtor.sh | sh
# this just runs all the curls at once OK im lazy
if [ $# -eq 0 ]; then
  echo "no arguments supplied. type out the plugin numbers you want to have installed"
  read -p "1: destruqtor \n 2: crunchrr \n 3:filtrr \n 4:prisma \n 5:spectra" selection
elif [[ "$1" == "help" ]]; then 
  echo "welcome to the blepfx multi-installer for linux. made by echoe in about 20 minutes."
  echo "type in the number of the plugin you want and this will install them wow."
  echo "for instance, typing '12345' will install all plugins."
else
  selection=$1
  if [[ "$2" == "f" ]]; then
    echo "installing plugins in $selection immediately"
  else
    echo "you are installing these plugin numbers: $selection"
    read -p "type y to continue. type anything else to exit" continue
    if [[ $continue == "y" ]]; then pass; else exit; fi
  fi
fi
if [[ $selection == *"1"* ]]; then
  curl https://fx.amee.ee/destruqtor.sh | sh
fi
if [[ $selection == *"2"* ]]; then
  curl https://fx.amee.ee/crunchrr.sh | sh
fi
if [[ $selection == *"3"* ]]; then
  curl https://fx.amee.ee/filtrr.sh | sh
fi
if [[ $selection == *"4"* ]]; then
  curl https://fx.amee.ee/prisma.sh | sh
fi
if [[ $selection == *"5"* ]]; then
  curl https://fx.amee.ee/spectra.sh | sh
fi
echo "script finished"
