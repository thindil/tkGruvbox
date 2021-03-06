## General information

These are Tk themes which use [Gruvbox](https://github.com/morhetz/gruvbox)
palette. The [gruvbox-dark](gruvbox-dark) and [gruvbox-light](gruvbox-light)
themes use .png images for buttons and backgrounds for various UI elements.
The [gruvclam-dark](gruvclam-dark) and [gruvclam-light](gruvclam-light)
themes are simple themes based on Tk theme `clam`. You can find screenshots
of all themes in their directories.

**INFO:** This project is no longer maintained. Feel free to clone it and take
care about it.

## Installation

### Linux
1. Of course, download one or both themes :)
2. If you want to use both, set your environment variable *TCLLIBPATH* to
   directory where file *pkgIndex.tcl* **outside** both themes is. For example,
   if you put both themes in */home/user/themes* directory, *TCLLIBPATH* must
   be set on `/home/user/themes`.
3. If you want to use only one of themes: set your environment variable
   *TCLLIBPATH* to theme directory. For example, if you want to use only
   Gruvbox light theme, and you put it in */home/user/.themes/* directory,
   *TCLLIBPATH* must be set on `/home/user/.themes/gruvbox-light`.
4. Edit (or create) your *.Xresources* file and add line:
   * If you want to use Gruvbox light theme: `*TkTheme:gruvbox-light`
   * If you want to use Gruvbox dark theme: `*TkTheme:gruvbox-dark`
   * If you want to use Gruvclam light theme: `*TkTheme:gruvclam-light`
   * If you want to use Gruvclam dark theme: `*TkTheme:gruvclam-dark`
5. Reload your Xorg configuration with command: `xrdb -merge ~/.Xresources`
6. Profit :)

----

That's all for now, if you have any question or proposition about the themes,
feel free to contact with me.

Bartek thindil Jasicki
