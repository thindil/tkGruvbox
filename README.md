## General information

These are Tk themes which use [Gruvbox](https://github.com/morhetz/gruvbox)
palette. The both uses .png images for buttons and backgrounds for
various other elements. You can find screenshots of both themes in their
directories.

## Installation

### Linux
1. Of course, download one or both themes :)
2. If you want to use both, set your environment variable *TCLLIBPATH* to
   directory where file *pkgIndex.tcl* **outside** both themes is. For example,
   if you put both themes in */home/user/themes* directory, *TCLLIBPATH* must
   be set on `/home/user/themes`.
3. If you want to use only one of themes: set your environment variable
   *TCLIBPATH* to theme directory. For example, if you want to use only
   Gruvbox light theme, and you put it in */home/user/.themes/* directory,
   *TCLLIBPATH* must be set on `/home/user/.themes/gruvbox-light`.
4. Edit (or create) your *.Xresources* file and add line:
   * If you want to use Gruvbox light theme: `*TkTheme:gruvbox-light`
   * If you want to use Gruvbox dark theme: `*TkTheme:gruvbox-dark`
5. Reload your Xorg configuration with command: `xrdb -merge ~/.Xresources`
6. Profit :)

----

That's all for now, if you have any question or proposition about the themes,
feel free to contact with me.

Bartek thindil Jasicki
