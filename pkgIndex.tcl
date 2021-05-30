set base_theme_dir [file join [pwd] [file dirname [info script]]]

array set base_themes {
  gruvbox-light 0.1
  gruvbox-dark 0.1
  gruvclam-dark 0.1
  gruvclam-light 0.1
}

foreach {theme version} [array get base_themes] {
  package ifneeded ttk::theme::$theme $version \
    [list source [file join $base_theme_dir $theme $theme.tcl]]
}

