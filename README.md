# mrdags

Code to draw directed acyclic graphs (DAGs), single world intervention graphs (SWIGs), and figures for Mendelian randomization (MR) analyses.

To build the output (*index.html*) open the project in RStudio (e.g., double-click *mrdags.Rproj*). Then open *index.qmd* and click the *Render* button or *Render Website* button in the Build pane. Or run in the R Console
```r
quarto::quarto_render()
```

or after the packages or **renv** or R version has been updated
```r
quarto::quarto_render(cache_refresh = TRUE)
```

Or run in your terminal
```bash
quarto render
```

or

```bash
quarto render --cache-refresh
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

On macOS the LaTeX package *dvisvgm* requires the Ghostscript dynamically linked shared library *libgs.dylib*.
Installing Ghostscript from Homebrew will provide this library.
```bash
brew install ghostscript
```

Then update the path to *libgs.dylib* in the `setup` chunk in *index.qmd*.

If you have an Apple Silicon Mac it is advisable to use a pre-release version of Quarto, version 1.2.56 or later, because then the `deno` executable is arm64 and hence the arm64 *libgs.dylib* library from Homebrew will work.

## Dependency packages

### Using renv

This project uses **renv**, to install the required packages at the same versions that produced the rendered output, run in R
```r
# install.packages("renv")
renv::restore()
```

### Updating packages within renv

Run
```r
renv::update()
renv::snapshot(prompt = FALSE)
```

### Using devtools instead of renv

Alternatively, but without the guarantee that the package version numbers will be same that generated the output, run in R
```r
# install.packages("devtools")
devtools::install_dev_deps()
```
This works because there is a `DESCRIPTION` file.

### TinyTeX

TinyTeX then needs to be installed with
```r
tinytex::install_tinytex()
```

During a render, TinyTeX will install the LaTeX packages *dvisvgm* and *pgf* if they are missing.
