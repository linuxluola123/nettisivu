#/bin/bash
echo "tämä ohjelma asentaa muutamia perus ohjelmia ja päivittää käyttiksen."
sudo apt update
sudo apt upgrade -y
sudo apt install tmux irssi nano vim nmtui cmatrix neofetch cpufetch lshw newsboat w3m links git gcc make cmake vlc htop gimp gparted ffmpeg audacity iperf freedoom -y

