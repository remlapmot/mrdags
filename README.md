# mrdags

R package to plot directed acyclic graphs (DAGs) and single world intervention graphs (SWIGs) for Mendelian randomization (MR) analyses.

## System requirements on Linux

To get **ggdag** and I think **igraph** to install  
```
sudo apt-get install glpk-utils libglpk-dev
```

And for **pdftools**
```
sudo add-apt-repository -y ppa:cran/poppler
sudo apt-get update
sudo apt-get install -y libpoppler-cpp-dev
```

## Installation

```r
# install.packages("remotes")
remotes::install_github("remlapmot/mrdags@convert-to-r-package")
```
