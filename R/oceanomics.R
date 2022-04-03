library(rmarkdown)

# Features of the Epurate Template
oceanomics <- function(toc = TRUE, code_folding = "hide", number_sections=TRUE) {

  # get the locations of resource files located within the package
  css      <- system.file("rmarkdown", "templates", "oceanomics" ,"resources", "style.css", package = "oceanomicsR")
  template <- system.file("rmarkdown", "templates", "oceanomics" ,"resources", "template_oceanomics.html", package = "oceanomicsR")

  # call the base html_document function
  rmarkdown::html_document( theme= "united",
                            template= template,
                            css= css,
                            toc= toc,
                            toc_float = TRUE,
                            toc_depth = 2,
                            number_sections= number_sections,
                            df_print = "paged",
                            code_folding = code_folding,
  )
}
