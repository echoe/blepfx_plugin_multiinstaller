# tiny install script for blepfx plugins
plugin_explainer="1:destruqtor | 2:crunchrr | 3:filtrr | 4:prisma | 5:spectra"

if [[ "$1" == "sh" ]]; then
  echo "this script does not support curl | sh install, please instead run it like this:"
  echo "curl https://raw.githubusercontent.com/echoe/blepfx_plugin_multiinstaller/refs/heads/main/install_blepfx.sh -o install_blepfx.sh; sh install_blepfx.sh 12345 f"
  exit
fi

if [[ "$1" == "help" ]]; then
  echo "welcome to the blepfx multi-installer for linux. made by echoe in about 20 minutes."
  echo "this installs any/all of the plugins at the same time, instead of one at a time."
  echo "to install a plugin, type its number as part of the first string after the script."
  echo $plugin_explainer
  echo "running 'sh install_blepfx.sh 12345 f' will force install all plugins."
  exit;
fi

if [[ "$#" -eq 0 ]]; then
  echo "no arguments supplied. type out the plugin numbers you want to have installed, and we'll install them."
  read -p $plugin_explainer selection
else
  selection=$1
fi

if [[ "$2" == "f" ]]; then
  echo "installing plugins in $selection immediately";
else
  echo "you are installing these plugin numbers: $selection"
  read -p "type y to continue. type anything else to exit" continue
  if [[ $continue == "y" ]]; then pass; else exit; fi
fi

if [[ $selection == *"1"* ]]; then curl https://fx.amee.ee/destruqtor.sh | sh; fi
if [[ $selection == *"2"* ]]; then curl https://fx.amee.ee/crunchrr.sh | sh; fi
if [[ $selection == *"3"* ]]; then curl https://fx.amee.ee/filtrr.sh | sh; fi
if [[ $selection == *"4"* ]]; then curl https://fx.amee.ee/prisma.sh | sh; fi
if [[ $selection == *"5"* ]]; then curl https://fx.amee.ee/spectra.sh | sh; fi

echo "installs finished for $selection"
