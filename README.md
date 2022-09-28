# VictoryNobara Installer Script

<img src="https://github.com/VictoryLinux/VictoryArch/blob/main/VictoryArch.png" />

This README contains the steps I do to install and configure a fully-functional Arch Linux installation containing a desktop environment, all the support packages (network, bluetooth, audio, printers, etc.), along with all my preferred applications and utilities. The shell scripts in this repo allow the entire process to be automated.)

## Create Nobara ISO

Download ArchISO from https://nobaraproject.org/ and put it on a USB drive with Etcher, Ventoy, Rufus or Popsicle.

```
git clone https://github.com/VictoryLinux/VictoryNobara
cd VictoryNobara
sudo chmod +x victory.sh
./victory.sh

```

## Credits
- Forked from ArchTitus from ChrisTitusTech https://github.com/ChrisTitusTech/ArchTitus
- Original packages script was a post install cleanup script called ArchMatic located here: https://github.com/rickellis/ArchMatic
- Thank you to all the folks that helped during the creation from YouTube Chat! Here are all those Livestreams showing the creation: <https://www.youtube.com/watch?v=IkMCtkDIhe8&list=PLc7fktTRMBowNaBTsDHlL6X3P3ViX3tYg>

Many Thanks goes to Chris Titus for creating major parts of this script and making it available to everyone. Check out his work from the link above.
