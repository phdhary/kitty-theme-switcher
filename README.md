# Kitty Theme Switcher

<!--toc:start-->

- [Usage](#usage)
- [But how do you know all these variables?](#but-how-do-you-know-all-these-variables)
- [Optional](#optional)
- [Contribute?](#contribute)
<!--toc:end-->

This is shell script to change **Kitty Terminal** theme according to the system theme state E.g light and dark.

Currently only for DE[^1] that use gtk3, tested in Gnome 42. See [contribute](#contribute).

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

**Make a binary**

- Install shc using your system's package manager.
- Compile this script by running:
  > shc -f main.sh
- Rename main.sh.x to your liking, E.g kts (kitty theme switcher)
  > mv main.sh.x kts
- There you have it, a binary that can be symlinked to $HOME/.local/bin/

**Utilizing Gnome Extension**

for Gnome user:

- Install `Night Theme Switcher` extension.
- Open `Night Theme Switcher`'s settings.
- Go to `Commands` tab.
- Activate `Run commands`.
- Add this script to both `Sunrise` and `Sunset` textfield. (Use full path to this script)

##### Contribute?

I Plan to make this working on many DE such as:

- KDE Plasma
- Windows
- Mac OS
- and many more

Any contributions are welcome!

[^1]: Desktop Environment
