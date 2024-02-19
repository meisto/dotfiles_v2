
# Install shells
sudo apt-get install -y zsh

# Install GUI components
sudo apt-get install -y i3 i3blocks compton rofi

# Install terminals
sudo apt-get install -y rxvt-unicode

# Others
sudo apt-get install -y vim        # Text editing 
sudo apt-get install -y feh        # For backgrounds
sudo apt-get install -y hardinfo   # Montoring
sudo apt-get install -y htop       # Dito
sudo apt-get install -y ranger     # File browser

# Set default shell
chsh -s /bin/zsh
