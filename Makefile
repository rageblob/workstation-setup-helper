install-homebrew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew install gh youtube-dl gopass ripgrep watson kubernetes-cli ffmpeg aws-iam-authenticator awscli fontconfig minikube tflint thefuck node

install-shell-themes:
	echo "03 53 72 73 81 82 156 178 179 180 190 200" | bash -c  "$(curl -sLo- https://git.io/vQgMr)"
