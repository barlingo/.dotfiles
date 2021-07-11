files=`echo */`
for file in $files
do
   stow -D $file
   stow $file
done

# Spacegray for gnome terminal
profile_key=$(gsettings get org.gnome.Terminal.ProfilesList default | sed -e "s/'//g" | tr -d "\n")
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile_key/ visible-name "'Spacegray'"
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile_key/ background-color "'rgb(36,36,36)'"
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile_key/ foreground-color "'rgb(183,187,183)'"
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile_key/ use-theme-colors "false"
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile_key/ palette "['rgb(44,47,51)', 'rgb(176,76,80)', 'rgb(177,214,122)',  'rgb(141,100,148)', 'rgb(84,134,192)', 'rgb(255,136,0)', 'rgb(82,124,119)', 'rgb(177,179,190)', 'rgb(75,80,86)', 'rgb(176,76,80)', 'rgb(148,152,91)', 'rgb(141,100,148)', 'rgb(102,137,157)', 'rgb(226,151,92)', 'rgb(82,124,119)', 'rgb(221,227,220)']"
# Required to hide gnome terminal with zsh
gsettings set org.gnome.Terminal.Legacy.Settings headerbar false
