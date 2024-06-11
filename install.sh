#!/bin/bash

# List of packages to install via pacman
PACMAN_PACKAGES=(
	kitty
	neovim
	git
	dunst
	picom
	polybar
	i3
	fish
	thunar
	lazygit
	btop
	ibus
	rofi
	bat
	base-devel
	mpv
	neofetch
	neovim
	pacseek
	tmux
	swappy
	sddm
	ripgrep
	fd
	eza
	ttf-jetbrains-mono-nerd
	# Add other pacman packages here
)

# List of AUR packages to install via yay
AUR_PACKAGES=(
	google-chrome-stable
	ibus-bamboo
	zoxide
	sddm-kcm
	bibata-cursor-theme
	# Add other AUR packages here
)

install_yay() {
	if ! command -v yay &>/dev/null; then
		echo "yay is not installed. Installing yay..."

		# Install dependencies
		sudo pacman -Syu --needed base-devel git

		# Clone yay repository and build it
		git clone https://aur.archlinux.org/yay.git
		cd yay
		makepkg -si

		# Clean up
		cd ..
		rm -rf yay
	else
		echo "yay is already installed."
	fi
}

# Function to install packages using pacman
install_pacman_packages() {
	echo "Installing pacman packages..."
	sudo pacman -Syu --needed "${PACMAN_PACKAGES[@]}"
}

# Function to install AUR packages using yay
install_aur_packages() {
	echo "Installing AUR packages..."
	yay -Sy --needed "${AUR_PACKAGES[@]}"
}

# Main script execution
main() {
	install_yay
	install_pacman_packages
	install_aur_packages
}

# Execute the main function
main
