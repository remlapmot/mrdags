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

On macOS the LaTeX package *dvisvgm* requires the Ghostscript dynamically linked library *libgs.dylib*. On Macs with x86_64 chips simply installing Ghostscript from Homebrew will provide this library.
```bash
brew install ghostscript
```

On Apple silicon Macs (M1 and M2 chips) the version of this library distributed by Homebrew does not work under Quarto because it only included the arm64 architecture (and Quarto is x86_64).
You can either install the x86_64 version using
```
arch -x86_64 brew install ghostscript
```

Alternatively, you can install a version of the library which has both arm64 and x86_64 architectures.
Such a version is available from [here](https://pages.uoregon.edu/koch/).
About halfway through the installation process click the *Customise* button and add the *Ghostscript Dynamic Library* as the second item to be installed.
After the installer has finished you will find *libgs.dylib* at `/usr/local/lib/libgs.dylib`.
This is a symbolic link to the specific version of the file, currently `/usr/local/share/ghostscript/10.00.0/lib/libgs.dylib.10.00`
To allow *dvisvgm* to find this library, the `LIBGS` environment variable is set near the top of *index.Rmd* using
```r
Sys.setenv(LIBGS = "/usr/local/lib/libgs.dylib")
```

Note that running 
```bash
file /usr/local/lib/libgs.dylib
```
will report which architecture/s your version of the file has.

## Dependency packages

This project uses **renv**, so to the install the required packages at the same versions that produced the rendered output, run in R
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
