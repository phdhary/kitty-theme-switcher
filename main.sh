#!/bin/bash

# Your kitty theme, please change these to your preference.
kitty_dark_theme=Catppuccin-Mocha;
kitty_light_theme=Catppuccin-Latte;
# Your gtk3 theme, also change these to the one used in your system.
gtk3_dark_theme=adw-gtk3-dark;
gtk3_light_theme=adw-gtk3;

read_current_gtk_theme ()
{
    gsettings get org.gnome.desktop.interface gtk-theme | tr --delete \'
}

read_kitty_theme ()
{
    tail $HOME/.config/kitty/kitty.conf | grep Cat
}

trim_kitty_theme ()
{
    var="$(read_kitty_theme)"
    var=${var:2}
}

set_kitty_theme ()
{
    kitty +kitten themes --reload-in=all $@;
    echo "Theme changed to $@!"
}

change_theme(){
    current_theme="$(read_current_gtk_theme)"
    kitty_current_theme="$(trim_kitty_theme)"
    case "$current_theme" in
        *$gtk3_dark_theme)
            if [[ $kitty_current_theme != $kitty_dark_theme ]]; then
                set_kitty_theme $kitty_dark_theme;
            fi
            ;;
        *$gtk3_light_theme)
            if [[ $kitty_current_theme != $kitty_light_theme ]]; then
                set_kitty_theme $kitty_light_theme;
            fi
            ;;
        *)
            echo -e "\e[1;31mSomething went wrong"
            echo -e "\e[1;33m
kitty dark = $kitty_dark_theme
kitty light = $kitty_light_theme"
            echo -e "\e[1;37mis these kitty theme correct?"
            echo -e "\e[1;33m
gtk3 dark = $gtk3_dark_theme
gtk3 light = $gtk3_light_theme"
            echo -e "\e[1;37mis these gtk3 theme correct?

Please name them correctly in their corresponding variable."
            ;;
    esac
}

main(){
    change_theme "${@}"
}

main
