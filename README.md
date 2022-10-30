# mrdags

Code to draw directed acyclic graphs (DAGs), single world intervention graphs (SWIGs), and figures for Mendelian randomization (MR) analyses.

To build the output (*index.html*) open the project in RStudio (e.g., double-click *mrdags.Rproj*). Then open *index.qmd* and click the *Render* button or *Render Website* button in the Build pane. Or run in the R Console
```r
quarto::quarto_render()
```

Or run in your terminal
```bash
quarto render
```

Rendered at https://remlapmot.github.io/mrdags/

## System requirements

### Linux system requirements

The following dependencies for **ggdag** and I think **igraph** are required. Install them on Debian/Ubuntu with  
```bash
sudo apt-get install glpk-utils libglpk-dev
```

Install the dependencies for **pdftools** with
```bash
sudo add-apt-repository -y ppa:cran/poppler
sudo apt-get update
sudo apt-get install -y libpoppler-cpp-dev
```

### macOS system requirements

On macOS *dvisvgm* requires the Ghostscript dynamically linked library *libgs.dylib*.

The version of the Homebrew library did not work under Quarto because it only included the arm64 architecture.
Hence download from e.g. [here](https://pages.uoregon.edu/koch/) and do a customised installed.
This includes both arm64 and x86_64 architectures.

## Dependency packages

This project uses **renv**, so the install the required packages at their right versions, run in R
```r
renv::restore()
```

Alternatively, but without the guarantee that the package version numbers run in R
```r
devtools::install_dev_deps()
```

TinyTeX then needs to be installed with
```r
tinytex::install_tinytex()
```

The LaTeX package *dvisvgm* will be installed by TinyTeX during a render.
