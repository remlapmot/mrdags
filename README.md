# mrdags

Code to draw directed acyclic graphs (DAGs), single world intervention graphs (SWIGs), and figures for Mendelian randomization (MR) analyses.

To render index.html open index.qmd in RStudio and click the *Render* button or *Render Website* button in the Build pane.
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

## System requirements on macOS

On macOS *dvisvgm* requires the ghostscript dynamically linked library *libgs.dylib*.

For some reason (maybe arm64/x64 issue) the library with Homebrew did not work under Quarto.
Hence download from e.g. [here](https://pages.uoregon.edu/koch/) and do a customised installed.

## Package dependencies

Run (because I have made a `DESCRIPTION` file)
```r
devtools::install_dev_deps()
```

The LaTeX package *dvisvgm* will be installed by tinytex during a render.
