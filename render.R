if (packageVersion('DiagrammeR') < '1.0.11') install.packages('DiagrammeR')

if (!webshot::is_phantomjs_installed()) webshot::install_phantomjs()

rmarkdown::render('improved-latex.Rmd')

# quarto::quarto_render()

quarto::quarto_render(cache_refresh = TRUE)
