# gruvclam-dark.tcl --
#
# gruvclam-dark theme based on Clam for the ttk package.
#
#  Copyright (c) 2021 Bartek Jasicki

package require Tk 8.6.0

namespace eval ttk::theme::gruvclam-dark {

    variable version 0.1
    package provide ttk::theme::gruvclam-dark $version

    variable colors
    array set colors {
        -bg             "#282828"
        -fg             "#ebdbb2"
        
        -disabledbg     "#4d4d4d"
        -disabledfg     "#7f8c8d"
        
        -selectbg       "#fabd2f"
        -selectfg       "#282828"
        
        -window         "#282828"
        -focuscolor     "#689d6a"
        -checklight     "#a89984"

        -shadow         "#928374"
        -darkbg         "#1d2021"
        -lightbg        "#3c3836"
    }

    ttk::style theme create gruvclam-dark -parent clam -settings {
        ttk::style configure . \
            -background $colors(-bg) \
            -foreground $colors(-fg) \
            -troughcolor $colors(-bg) \
            -selectbackground $colors(-selectbg) \
            -selectforeground $colors(-selectfg) \
            -fieldbackground $colors(-window) \
            -font TkDefaultFont \
            -borderwidth 1 \
            -focuscolor $colors(-focuscolor) \
            -highlightcolor $colors(-checklight) \
            -lightcolor $colors(-fg) \
            -darkcolor $colors(-shadow) \
            -bordercolor $colors(-shadow)


        ttk::style map . -foreground [list disabled $colors(-disabledfg)]

        #
        # Settings:
        #

        ttk::style configure TButton -padding {8 4 8 4} -width -10 -anchor center -relief raised
        ttk::style configure TMenubutton -padding {8 4 4 4} -relief raised
        ttk::style configure Toolbutton -padding {6 2} -anchor center

        ttk::style configure TSeparator -background $colors(-bg)
        ttk::style configure TEntry -insertcolor $colors(-fg)

        ttk::style map TButton -lightcolor [list active $colors(-focuscolor)] \
           -darkcolor [list active $colors(-focuscolor)] \
           -bordercolor [list active $colors(-focuscolor)] \
           -foreground [list active $colors(-focuscolor)]

        ttk::style map TMenubutton -lightcolor [list active $colors(-focuscolor)] \
           -darkcolor [list active $colors(-focuscolor)] \
           -bordercolor [list active $colors(-focuscolor)] \
           -foreground [list active $colors(-focuscolor)]

        ttk::style map Toolbutton -background [list active $colors(-lightbg) selected $colors(-darkbg)]

        ttk::style map TPanedwindow -background [list hover $colors(-checklight)]

        ttk::style map TCombobox -selectbackground [list \
            !focus         $colors(-window) \
            {readonly hover} $colors(-checklight) \
            {readonly focus} $colors(-focuscolor) \
            ]
            
        ttk::style map TCombobox -selectforeground [list \
            !focus $colors(-fg) \
            {readonly hover} $colors(-fg) \
            {readonly focus} $colors(-selectfg) \
            ]
        
        # Treeview
        ttk::style configure Treeview -background #282828
        ttk::style map Treeview \
            -background [list selected $colors(-selectbg)] \
            -foreground [list selected $colors(-selectfg)]
        ttk::style configure Heading -relief raised
        ttk::style map Heading -lightcolor [list active $colors(-focuscolor)] \
           -darkcolor [list active $colors(-focuscolor)] \
           -bordercolor [list active $colors(-focuscolor)] \
           -foreground [list active $colors(-focuscolor)]
        
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
