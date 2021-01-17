# dotfiles
Files used to configure vim, popos, gtk bar etc
__Linking Commands__
```
ln -s ~/Git/dotfiles/.config/gtk-3.0/gtk.css ~/.config/gtk-3.0/gtk.css
ln -s ~/Git/dotfiles/.vimrc ~/.vimrc
```

__Install fingerprint reader__
```
sources: (you are only a genius if you don't reveal your sources) https://askubuntu.com/questions/1239582/xps-13-9300-fingerprint-reader-any-driver-updates https://askubuntu.com/questions/1015416/use-fingerprint-authentication-not-only-for-login

Step 1

sudo apt install libfprint-2-tod1

Step 2 go to this site and download the .deb http://dell.archive.canonical.com/updates/pool/public/libf/libfprint-2-tod1-goodix/

Step 3 cd to your downloaded location... for example

cd Downloads

and run

sudo dpkg -i libfprint-2-tod1-goodix_0.0.4-0ubuntu1somerville1_amd64.deb

Step 3 Enable SU using spacebar

sudo pam-auth-update

Step 4 Restart and go to users in the system settings
```
This can be scripted
