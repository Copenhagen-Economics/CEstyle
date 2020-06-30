CE_cols <- function(...) {

  CE_colors <- c(
  `cyan`       = "#00ffff",
  `light grey` = "#e6e6e6",
  `dark blue`  = "#2b5065",
  `light blue` = "#b0d0dc",
  `yellow`     = "#ffff00",
  `blue`       = "#016c98",
  `dark grey`  = "#7d7d7d",
  `black`      = "#2a2a2a",
  `white`      = "#ffffff")
  cols <- c(...)

  if (is.null(cols))
    return (CE_colors)

  CE_colors[cols]
}

CE_pal <- function(palette = "main", reverse = FALSE, ...) {

  CE_palettes <- list(
  `one`   = CE_cols("dark blue"),

  `two`   = CE_cols("dark blue", "light blue"),

  `three` = CE_cols("dark blue", "light blue", "cyan"),

  `four`  = CE_cols("dark blue", "light blue", "cyan", "blue"),

  `five`  = CE_cols("dark blue", "light blue", "cyan", "blue", "dark grey"),

  `six`   = CE_cols("dark blue", "light blue", "cyan", "blue", "dark grey", "light grey"),

  `seven` = CE_cols("dark blue", "light blue", "cyan", "blue", "dark grey", "light grey", "yellow"),

  `eight` = CE_cols("dark blue", "light blue", "cyan", "blue", "dark grey", "light grey", "yellow", "black"),

  `grey`  = CE_cols("dark grey", "light grey", "black"),

  `blue`  = CE_cols("dark blue", "blue", "light blue", "cyan")
)
  pal <- CE_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}


scale_color_CE <- function(palette = "six", discrete = TRUE, reverse = FALSE, ...) {
  pal <- CE_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("CE_", palette), palette = pal, ...)
  } else {
    scale_colour_gradientn(colours = pal(256), ...)
  }
}


scale_fill_CE <- function(palette = "six", discrete = TRUE, reverse = FALSE, ...) {
  pal <- CE_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("CE_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
