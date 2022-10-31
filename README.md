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

On an M1/M2 Mac the version of this library distributed by Homebrew (`brew install ghostscript`) did not work under Quarto because it only included the arm64 architecture.
Hence download a version of the library which has both arm64 and x86_64 architectures from [here](https://pages.uoregon.edu/koch/) and do a customised installation.

## Dependency packages

This project uses **renv**, so to the install the required packages at the same versions that produced the rendered output, run in R
```r
renv::restore()
```

Alternatively, but without the guarantee that the package version numbers will be same that generated the output, run in R
```r
devtools::install_dev_deps()
```

TinyTeX then needs to be installed with
```r
tinytex::install_tinytex()
```

The LaTeX packages *dvisvgm* and *pgf* will be installed by TinyTeX during a render.
