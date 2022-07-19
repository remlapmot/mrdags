# mrdags

Code to draw directed acyclic graphs (DAGs) and single world intervention graphs (SWIGs) for Mendelian randomization (MR) analyses.

To render index.html open index.qmd in RStudio and click the *Render* button or run in R  
```r
quarto::quarto_render()
```

Rendered at https://remlapmot.github.io/mrdags/

## System requirements on Linux

To get **ggdag** and I think **igraph** to install  
```bash
sudo apt-get install glpk-utils libglpk-dev
```

And for **pdftools**
```bash
sudo add-apt-repository -y ppa:cran/poppler
sudo apt-get update
sudo apt-get install -y libpoppler-cpp-dev
```

Then run (because I have made a `DESCRIPTION` file)
```r
devtools::install_dev_deps()
```
