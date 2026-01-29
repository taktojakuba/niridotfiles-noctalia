# niri dotfiles with noctalia-shell

## Comes with an installer, so you don’t need to do anything except clone this repo and run `installer.sh`.

# how to run installer ?

## first clone this repo
### git clone https://github.com/taktojakuba/niridotfiles-noctalia.git

## then cd into it
### cd niridotfiles-noctalia

## next make the installer executable
### chmod +x installer.sh

## and run it
### ./installer.sh

# what will it do ?

### first it checks if `yay` (AUR helper) is installed
### if `yay` is not present, it installs it automatically
### then it installs `niri` and `noctalia-shell` from the AUR using `yay`
### next it copies `config.kdl` to `~/.config/niri/`
### setup complete

# Why was this made?
## A friend of mine, who was new to Linux and had been using KDE Plasma for a long time, saw my setup and wanted the same thing. His exact feedback was “ty zaje**te” (Polish for “this is cool”).
### Instead of walking him through manual configuration, I wrote this script to automate the setup process. The goal is simple: install and replicate my environment on a fresh machine with minimal tinkering and zero guesswork.
<img width="2560" height="1440" alt="example" src="https://github.com/user-attachments/assets/7a95ee65-daa4-4cb2-bd5b-807fe6d4a71b" />
