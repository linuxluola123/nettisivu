#/bin/bash
echo "Tämä ohjelma asentaa openttdn koodísta debianille"
cd ~/
sudo apt install build-essential pkg-config libsdl1.2-dev git zlib1g-dev liblzo2-dev liblzma-dev libfontconfig-dev libicu-dev libfluidsynth-dev -y
git clone https://github.com/OpenTTD/OpenTTD.git .openttdkoodi
cd .openttdkoodi
mkdir build
cd build
cmake ..
make
cd ~/
mv alias.txt alias_tempbackup.txt
wget https://linuxluola123.github.io/nettisivu/alias.txt
cat alias.txt >> .bashrc
rm alias.txt
mv alias_tempbackup.txt alias.txt
notify-send "openttd on asennettu""
