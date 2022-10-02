# VictoryNobara Installer Script

<img src="https://github.com/VictoryLinux/VictoryNobara/blob/main/VictoryNobara.png" />

This README contains the steps I do to install and configure a fully-functional Arch Linux installation containing a desktop environment, all the support packages (network, bluetooth, audio, printers, etc.), along with all my preferred applications and utilities. The shell scripts in this repo allow the entire process to be automated.)

## Create Nobara ISO

Download ArchISO from https://nobaraproject.org/ and put it on a USB drive with Etcher, Ventoy, Rufus or Popsicle.

```
git clone https://github.com/VictoryLinux/VictoryNobara
cd VictoryNobara
chmod +x victory-start.sh && chmod +x victory-finish.sh

./victory-start.sh

Restart PC or Restart Gnome Shell

./victory-finish.sh

```

A script developed for customizing Arch, then adapted for Fedora, now adapted for Nobara.
