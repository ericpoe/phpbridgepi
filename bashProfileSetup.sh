#! /bin/bash
## Set up .bash_profile to work with PHPBridge Applications
cat > ~/.bash_profile <<-BASH_PROFILE
	if [ -f ~/.bashrc ]; then
	   source ~/.bashrc
	fi

	## Automatically start VncServer
	vncserver :0
	# If you want more than the default settings for VNC, try the following instead
	# vncserver :0 -geometry 1920x1080 -depth 24 -dpi 96

	## set PATH so it recognizes executables installed via Composer
	if [ -d "$HOME/.composer/vendor/bin" ] ; then
		PATH="$HOME/.composer/vendor/bin:$PATH"
	fi
BASH_PROFILE
