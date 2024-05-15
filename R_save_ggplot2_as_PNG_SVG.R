# save ggplot2 plots as png or svg with ggsave

### in function(...) you can set individual default values 
### which you can overwrite when you call the function
### example: 
### savePNG(plotRef = plot, name = "testplot", plotWidth = 600, plotHeight = 400)

### !!! mandatory: input your ggplot2 plot at plotRef = ?

# set global defaults
defaultName <- "plot"
defaultWidth <- 1920
defaultAspectRatio <- 16/9

# PNG
savePNG <- function(plotRef, 
                    name = defaultName, 
                    path = NULL, # defaults to working directory
                    aspectRatio = defaultAspectRatio, 
                    plotWidth = defaultWidth, 
                    plotHeight = plotWidth / aspectRatio) {
  ggsave(filename = sprintf("%s.png", name),
         plot = plotRef,
         device = "png",
         path = path,
         width = plotWidth, 
         height = plotHeight,
         units = "px",
         scale = 1,
         dpi = 300,
         limitsize = TRUE,
         bg = NULL,)
}

# SVG
saveSVG <- function(plotRef, 
                    name = defaultName, 
                    path = NULL, # defaults to working directory
                    aspectRatio = defaultAspectRatio, 
                    plotWidth = defaultWidth, 
                    plotHeight = plotWidth / aspectRatio) {
  ggsave(filename = sprintf("%s.svg", name),
         plot = plotRef,
         device = "svg",
         path = path,
         width = plotWidth, 
         height = plotHeight,
         units = "px",
         scale = 1,
         dpi = 300,
         limitsize = TRUE,
         bg = NULL)
}


### import these functions:
### source("path_to_this_file/R_save_ggplot2_as_PNG_SVG.R")

### use these functions:
### savePNG(plot)
