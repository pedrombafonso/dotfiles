

all: git sublime

bash:
	ln -s ~/.dotfiles/bash/bash_profile ~/.bash_profile

git:
	rm .gitconfig
	ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
	ln -s ~/.dotfiles/git/gitignore_global ~/.gitignore_global

	git config --global core.excludesfile ~/.gitignore_global

	git config --global user.name "pedrombafonso"
	git config --global user.email "mailpedroafonso.net"

sublime:
	# User preferences
	cp ~/Library/'Application Support'/'Sublime Text 2'/Packages/User/Preferences.sublime-settings ~/Library/'Application Support'/'Sublime Text 2'/Packages/User/Preferences.sublime-settings.bak
	rm -rf ~/Library/'Application Support'/'Sublime Text 2'/Packages/User/Preferences.sublime-settings
	ln -s ~/.dotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings
	# Installed packages
	cp ~/Library/'Application Support'/'Sublime Text 2'/'Installed Packages' ~/Library/'Application Support'/'Sublime Text 2'/'Installed Packages.bak'
	rm -rf ~/Library/'Application Support'/'Sublime Text 2'/'Installed Packages'
	ln -s ~/.dotfiles/sublime/'Installed Packages'/ ~/Library/'Application Support'/'Sublime Text 2'/'Installed Packages'
	# Solarized color scheme
	ln -s ~/.dotfiles/sublime/'Solarized (dark).tmTheme' ~/Library/'Application Support'/'Sublime Text 2'/Packages/'Color Scheme - Default'/'Solarized (dark).tmTheme'


clean:
	rm ~/.gitignore_global
	# sublime
	rm ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings
	rm ~/Library/'Application Support'/'Sublime Text 2'/'Installed Packages'
	rm ~/Library/'Application Support'/'Sublime Text 2'/Packages/'Color Scheme - Default'/'Solarized (dark).tmTheme'
	mv ~/Library/'Application Support'/'Sublime Text 2'/'Installed Packages.bak' ~/Library/'Application Support'/'Sublime Text 2'/'Installed Packages' 
	mv ~/Library/'Application Support'/'Sublime Text 2'/'Installed Packages.bak' ~/Library/'Application Support'/'Sublime Text 2'/'Installed Packages'


.PHONY: all bash git sublime
