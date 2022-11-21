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

### JetBrains Mono font

Install JetBrains Mono from [here](https://www.jetbrains.com/lp/mono/).

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

On macOS the LaTeX package *dvisvgm* requires the Ghostscript dynamically linked shared library *libgs.dylib*.
Installing Ghostscript from Homebrew will provide this library.
```bash
brew install ghostscript
```

If you have an Apple Silicon Mac it is advisable to use a pre-release version of Quarto, version 1.2.56 or later, because then the deno executable is arm64 and hence the arm64 *libgs.dylib* library from Homebrew will work.

## Dependency packages

This project uses **renv**, to install the required packages at the same versions that produced the rendered output, run in R
```r
# install.packages("renv")
renv::restore()
```

Alternatively, but without the guarantee that the package version numbers will be same that generated the output, run in R
```r
# install.packages("devtools")
devtools::install_dev_deps()
```

TinyTeX then needs to be installed with
```r
tinytex::install_tinytex()
```

During a render, TinyTeX will install the LaTeX packages *dvisvgm* and *pgf* if they are missing.
