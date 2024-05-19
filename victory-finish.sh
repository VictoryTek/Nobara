#!/bin/bash
# Finish Setup my Nobara Linux
# Ver. 1.2

#####################################################################
#  ____    ____  __                                                 #
#  \   \  /   / |__| ____ ________    ____    _______ ___  ___      #
#   \   \/   /  ___ |   _|\__   __\ /   _  \ |  __   |\  \/  /      #
#    \      /  |   ||  |_   |  |   |   |_|  ||  | |__| \   /        #
#     \____/   |___||____|  |__|    \_____ / |__|       |_|         #
#                                                                   #
# Victory Linux Install script                                      #
# https://github.com/VictoryLinux                                   #
#####################################################################


echo -e "----------------------------------------------------------------"
echo -e "  ____    ____  __                                              "
echo -e "  \   \  /   / |__| ____ ________    ____    _______ ___  ___   "
echo -e "   \   \/   /  ___ |   _|\__   __\ /   _  \ |  __   |\  \/  /   "
echo -e "    \      /  |   ||  |_   |  |   |   |_|  ||  | |__| \   /     "
echo -e "     \____/   |___||____|  |__|    \_____ / |__|       |_|      "
echo -e "                                                                "
echo -e "----------------------------------------------------------------"
echo -e "     ██   ██╗   █████╗    ██████╗   █████╗ ██████╗  █████╗      "
echo -e "     ███  ██║  ██    ██╗  ██    ██╗██╔══██╗██   ██╗██╔══██╗     "
echo -e "     ██║█ ██║ ██      ██╗ ██████╔═╝███████║██████╔╝███████║     "
echo -e "     ██║ ███║  ██    ██╔╝ ██    ██╗██║  ██║██║  ██║██║  ██║     "
echo -e "     ██║  ██║   ██████╔╝  ██████╔═╝██║  ██║██║  ██║██║  ██║     "
echo -e "     ╚═╝  ╚═╝   ╚═════╝   ╚═════╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝     "
echo -e "----------------------------------------------------------------"

# Make sure each command executes properly
check_exit_status() {

	if [ $? -eq 0 ]
	then
		echo
		echo "Success"
		echo
	else
		echo
		echo "[ERROR] Update Failed! Check the errors and try again"
		echo
		
		read -p "The last command exited with an error. Exit script? (y/n) " answer

            if [ "$answer" == "y" ]
            then
                exit 1
            fi
	fi
}

function greeting() {
	clear
	
echo "+-----------------------------------------------------------------+"
echo "|-------   Hello, $USER. Let's setup Victory-Edition.  -----------|"
echo "+-----------------------------------------------------------------+"
echo -e "----------------------------------------------------------------"
echo -e "  ____    ____  __                                              "
echo -e "  \   \  /   / |__| ____ ________    ____    _______ ___  ___   "
echo -e "   \   \/   /  ___ |   _|\__   __\ /   _  \ |  __   |\  \/  /   "
echo -e "    \      /  |   ||  |_   |  |   |   |_|  ||  | |__| \   /     "
echo -e "     \____/   |___||____|  |__|    \_____ / |__|       |_|      "
echo -e "                                                                "
echo -e "----------------------------------------------------------------"
echo -e "     ██   ██╗   █████╗    ██████╗   █████╗ ██████╗  █████╗      "
echo -e "     ███  ██║  ██    ██╗  ██    ██╗██╔══██╗██   ██╗██╔══██╗     "
echo -e "     ██║█ ██║ ██      ██╗ ██████╔═╝███████║██████╔╝███████║     "
echo -e "     ██║ ███║  ██    ██╔╝ ██    ██╗██║  ██║██║  ██║██║  ██║     "
echo -e "     ██║  ██║   ██████╔╝  ██████╔═╝██║  ██║██║  ██║██║  ██║     "
echo -e "     ╚═╝  ╚═╝   ╚═════╝   ╚═════╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝     "
echo -e "----------------------------------------------------------------"
echo -e " DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK. "
echo -e "----------------------------------------------------------------"

echo -e "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo -e "++++++++         This is NOT a silent install           ++++++++"
echo -e "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	
#	sleep 5s
	echo "ARE YOU READY TO FINISH? [y,n]"
	read input

	# did we get an input value?
	if [ "$input" == "" ]; then

	   echo "Nothing was entered by the user"

	# was it a y or a yes?
	elif [[ "$input" == "y" ]] || [[ "$input" == "yes" ]]; then

	   echo "You replied $input, you are ready to start"
	   echo
	   echo "Starting VictoryNobara finish script."
	   echo
	   sleep 3s

	# treat anything else as a negative response
	else

	   echo "You replied $input, you are not ready"
	   echo
	   exit 1

fi

	echo
	
	check_exit_status
}

#APPEARANCE
function appearance() {
	cd $HOME/Nobara/
	git clone https://github.com/daniruiz/flat-remix
	git clone https://github.com/daniruiz/flat-remix-gtk
	git clone https://github.com/bikass/kora.git
	sudo dnf copr enable peterwu/rendezvous
	sudo dnf install bibata-cursor-themes
	#mkdir -p ~/.icons && mkdir -p ~/.themes
#	cp -r flat-remix/Flat-Remix* ~/.icons/ && cp -r flat-remix-gtk/themes/Flat-Remix* ~/.themes/
	sudo mv flat-remix/Flat-Remix* /usr/share/icons/ 
	sudo mv flat-remix-gtk/themes/Flat-Remix* /usr/share/themes/
	rm -rf ~/flat-remix flat-remix-gtk
#	gsettings set org.gnome.desktop.interface gtk-theme "Flat-Remix-GTK-Blue-Dark"
	gsettings set org.gnome.desktop.interface icon-theme "kora"
	echo
	gsettings set org.gnome.shell favorite-apps "['brave-browser.desktop', 'firefox.desktop', 'org.gnome.Nautilus.desktop', 'terminator.desktop', 'nobara-sync.desktop', 'com.simplenote.Simplenote.desktop', 'virtualbox.desktop', 'com.vscodium.codium.desktop', 'onboard.desktop']"
	gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
	gsettings set org.gnome.desktop.interface clock-format '12h'   
	gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Classic'
	echo
	gsettings set org.fedorahosted.background-logo-extension "True"
	gsettings set org.fedorahosted.background-logo-extension.logo-file "/usr/share/nobara-logos/nobara_lightbackground.svg"
	gsettings set org.fedorahosted.background-logo-extension.logo-file-dark "/usr/share/nobara-logos/nobara_darkbackground.svg"

	check_exit_status
}

#EXTENSIONS
function extensions() {
	gnome-extensions enable caffeine@patapon.info
	gnome-extensions enable dash-to-dock@micxgx.gmail.com
#	gnome-extensions enable impatience@gfxmonk.net
#	gnome-extensions enable noannoyance@daase.net
#	gnome-extensions enable pop-shell@system76.com
	gnome-extensions enable tiling-assistant@leleat-on-github
#	gnome-extensions enable Vitals@CoreCoding.com
	gnome-extensions enable window-list@gnome-shell-extensions.gcampax.github.com
	gnome-extensions enable sound-output-device-chooser@kgshank.net
#	gnome-extensions enable gnome-ui-tune@itstime.tech
#	gnome-extensions enable taskicons@rliang.github.com

	check_exit_status
}

#CLEAN UP
function clean-up() {
	
	echo "##################################"
	echo "|     Cleaning up Left Overs.    |"
	echo "##################################"
	echo
	sleep 6s
	sudo rm -rf /usr/share/backgrounds/gnome
	echo
	sudo rm -rf /usr/share/backgrounds/workstation
	echo
	sudo rm -rf ~/extension-list
    echo
	sudo rm -rf ~/Tiling-Assistant
	echo
	check_exit_status
}

# finish
function restart() {
	read -p "Are You ready to restart now? (y/n) " answer 

            if [ "$answer" == "y" ]
            then
        echo
		echo "----------------------------------------------------"
		echo "----     VictoryNobara has been installed!      ----"
		echo "----------------------------------------------------"
		echo
		check_exit_status
		echo
		echo "Restarting in 15s"
		sleep 15s
                shutdown -r now

            if [ "$answer" == "n" ]
            then
		exit 1

            fi
        fi

}

greeting
appearance
extensions
clean-up
restart
