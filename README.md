# Kitty Theme Changing Script

This is shell script to change **Kitty Terminal** theme according to the system theme state E.g light and dark.

Only for DE that use gtk3, tested in Gnome 42.

##### Usage

- Change `kitty_dark_theme` and `kitty_light_theme` variable in `main.sh` to your preference.
- Change `gtk3_dark_theme` and `gtk3_light_theme` variable in `main.sh` to the one used in your system.
- Save it and switch your system theme.
- Run this script.

##### But how do you know all these variables?

- For kitty theme, you can run this to see collections of themes:
  > kitty +kitten themes
- For gtk3, you can run this:
  > gsettings get org.gnome.desktop.interface gtk-theme | tr --delete \'

##### Optional

- Install shc using your system's package manager.
- Compile this script by running:
  > shc -f main.sh
- Rename main.sh.x to your liking, E.g kat (kitty auto theme)
  > mv main.sh.x kat
- There you have it, a binary that can be symlinked to $HOME/.local/bin/

##### Future

I'm planning to to make this script run in background and automatically detect system theme change. But currently I don't know how.
