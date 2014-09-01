#! /bin/bash
# Install applications and files to Raspberry Pi that are needed for PHPBridge

cat > ~/.bash_profile <<-BASH_PROFILE
	if [ -f ~/.bashrc ]; then
	   source ~/.bashrc
	fi

	# Automatically start VncServer
	vncserver :0 -geometry 1920x1080 -depth 24 -dpi 96
BASH_PROFILE
