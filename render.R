if (packageVersion('DiagrammeR') < '1.0.11') install.packages('DiagrammeR')

rmarkdown::render('improved-latex.Rmd')

# quarto::quarto_render()

quarto::quarto_render(cache_refresh = TRUE)
