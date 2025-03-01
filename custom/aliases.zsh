# show slashes for directories.
alias ls='ls -FG'

# long list format including hidden files and include unit size
alias ll='ls -laG'

# go back one directory
alias b='cd ..'

# History lists your previously entered commands
alias h='history'

# If we make a change to our bash profile we need to reload it
alias reload="clear; exec zsh -l"

# alias for homebrewed vim 7.4
alias vim='/usr/local/bin/vim'

# =================
# Additional Aliases
# =================

# Hide/show all desktop icons (useful when presenting)
alias hide_desktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias show_desktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Hide/show hidden files in Finder
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"
alias showFiles="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"

#sets up a git alias
alias git=hub

# Application Aliases
alias ff='open /Applications/Firefox.app'
alias vscode="/Applications/Visual\\ Studio\\ Code.app/contents/Resources/app/bin/code"

alias o="open ."
alias python='python3'
alias pip='pip3'
#alias simpServ='php -S localhost:8000' 
# alias runFlask='flask --app app.py --debug run' 

#arduino aliases
# alias compile="arduino-cli compile"
alias compile="arduino-cli compile --libraries /Users/awdriggs/code/arduino/libraries"
# alias attachNano="arduino-cli board attach -b arduino:samd:nano_33_iot" #you have a custom function named attach
alias upload="arduino-cli upload"
# alias swatch= "cat /dev/cu.usbmodem1101" #you have a custome function named monitor


# jekyll
alias hyde="bundle exec jekyll serve --baseurl ''"
