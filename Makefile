install-homebrew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/$USER/.zprofile\n
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
	brew install gh youtube-dl ripgrep watson kubernetes-cli aws-iam-authenticator awscli fontconfig minikube tflint thefuck node direnv

install-shell-themes:
	echo "03 53 72 73 81 82 156 178 179 180 190 200 222" | bash -c  "$(curl -sLo- https://git.io/vQgMr)"

install-zsh:
	sudo pacman -S zsh
	chsh -s $(which zsh)

install-gopass:
	sudo pacman -S gopass

yubikey:
	sudo pacman -Syu yubikey-manager yubikey-manager-gt yubico-pam pam-u2f yubioauth-desktop libfido2
	sudo systemctl start pcscd # start pcscd.service
