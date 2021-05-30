# gruvclam-light.tcl --
#
# gruvclam-light theme based on Clam for the ttk package.
#
#  Copyright (c) 2021 Bartek Jasicki

package require Tk 8.6.0

namespace eval ttk::theme::gruvclam-light {

    variable version 0.1
    package provide ttk::theme::gruvclam-light $version

    variable colors
    array set colors {
        -bg             "#fbf1c7"
        -darkbg         "#bdae93"
        -lightbg        "#f9f5d7"
        -fg             "#3c3836"
        -gray           "#7c6f64"
        -yellow         "#d79921"
        -darkyellow     "#b57614"
        -aqua           "#427b58"
        -darkorange     "#af3a03"
        -orange         "#d65d0e"
        -blue           "#458588"
        -darkblue       "#076678"
        -darkpurple     "#8f3f71"
        -purple         "#b16286"
    }

    ttk::style theme create gruvclam-light -parent clam -settings {
        ttk::style configure . \
            -background $colors(-bg) \
            -foreground $colors(-fg) \
            -troughcolor $colors(-bg) \
            -selectbackground $colors(-yellow) \
            -selectforeground $colors(-bg) \
            -fieldbackground $colors(-bg) \
            -font TkDefaultFont \
            -borderwidth 1 \
            -focuscolor $colors(-aqua) \
            -highlightcolor $colors(-gray) \
            -lightcolor $colors(-blue) \
            -darkcolor $colors(-darkblue) \
            -bordercolor $colors(-bg) \
            -insertcolor $colors(-fg) \
            -arrowcolor $colors(-fg)
 

        ttk::style map . -foreground [list disabled $colors(-gray)]

        #
        # Settings:
        #

        # Default buttons
        ttk::style configure TButton -padding {8 4 8 4} -width -10 -anchor center -relief raised -foreground $colors(-darkblue)
        ttk::style map TButton -lightcolor [list active $colors(-gray)] \
           -darkcolor [list active $colors(-gray)] \
           -bordercolor [list active $colors(-gray)] \
           -foreground [list active $colors(-gray)]

        # Menu buttons
        ttk::style configure TMenubutton -padding {8 4 4 4} -relief raised
        ttk::style map TMenubutton -lightcolor [list active $colors(-aqua)] \
           -darkcolor [list active $colors(-aqua)] \
           -bordercolor [list active $colors(-aqua)] \
           -foreground [list active $colors(-aqua)]

        # Toolbuttons
        ttk::style configure Toolbutton -padding {6 2} -anchor center
        ttk::style map Toolbutton -background [list active $colors(-lightbg) selected $colors(-darkbg)]

        # Comboboxes
        ttk::style map TCombobox -selectbackground [list \
            !focus         $colors(-bg) \
            {readonly hover} $colors(-gray) \
            {readonly focus} $colors(-aqua)] \
          -selectforeground [list \
            !focus $colors(-fg) \
            {readonly hover} $colors(-fg) \
            {readonly focus} $colors(-bg)]

        ttk::style configure TSeparator -background $colors(-blue)

        ttk::style configure TScale -bordercolor $colors(-darkbg)

        ttk::style configure TProgressbar -background $colors(-darkpurple) -lightcolor $colors(-purple) -darkcolor $colors(-darkpurple) -bordercolor $colors(-darkbg)

        ttk::style configure TNotebook.Tab -bordercolor $colors(-darkpurple)

        ttk::style map TPanedwindow -background [list hover $colors(-gray)]

        # Treeview
        ttk::style configure Treeview -background $colors(-bg)
        ttk::style map Treeview \
            -background [list selected $colors(-yellow)] \
            -foreground [list selected $colors(-bg)]
        ttk::style configure Heading -relief raised
        ttk::style map Heading -lightcolor [list active $colors(-aqua)] \
           -darkcolor [list active $colors(-aqua)] \
           -bordercolor [list active $colors(-aqua)] \
           -foreground [list active $colors(-aqua)]
        
        # Some defaults for non ttk-widgets so that they fit
        # to the Gruvclam theme, too
        tk_setPalette background [ttk::style lookup . -background] \
        	foreground [ttk::style lookup . -foreground] \
        	highlightColor [ttk::style lookup . -focuscolor] \
        	selectBackground [ttk::style lookup . -selectbackground] \
        	selectForeground [ttk::style lookup . -selectforeground] \
        	activeBackground [ttk::style lookup . -selectbackground] \
        	activeForeground [ttk::style lookup . -selectforeground]
        option add *font [ttk::style lookup . -font]
    }
}
