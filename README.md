# dotfiles and other desktop env setup

## Setup

### Run install script
Run install to create sym links in your home directory that point to the home directory in this project
```
node install.mjs
```

### Install skhd and Yabia

```
$ brew install koekeishiya/formulae/skhd
$ brew install koekeishiya/formulae/yabai

$ ln -s "${HOME}/.config/yabai/yabairc" "${HOME}/.yabairc"
$ ln -s "${HOME}/.config/yabai/skhdrc" "${HOME}/.skhdrc"

$ brew services start skhd
$ brew services start yabai

```

### Karabiner
"A powerful and stable keyboard customizer for macOS."

https://karabiner-elements.pqrs.org
 
### Install Stackline
https://github.com/AdamWagner/stackline


### Mac OS
Reassign some system keys

**Settings >> Keyboard >> Keyboard Shortcuts**
	App Shortcuts
		Reassign "Hide Others" to hyper - f
	Mission Control
		Reassign ⌘ - [1-0] to change spaces (these won't show up in settings until they have been created in mission control)
**Settings >> Desktop Doc**
Automatically rearrange Spaces based on most recent use - OFF

	Global Key

### Ubersicht + Simple Bar
Übersicht lets you run system commands and display their output on your desktop in little containers, called widgets. 

#### Install
https://tracesof.net/uebersicht/
https://github.com/Jean-Tinland/simple-bar

#### Settings
`cmd + ,`


## Usage
Once everything is setup you should be able to press hyper + / and see a help message about available hotkeys