# mrdags

Code to draw directed acyclic graphs (DAGs), single world intervention graphs (SWIGs), and figures for Mendelian randomization (MR) analyses.

To build the output (_index.html_) open the project in RStudio (e.g., double-click _mrdags.Rproj_). Then open _index.qmd_ and click the _Render_ button or _Render Website_ button in the Build pane. Or run in the R Console

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

On macOS the LaTeX package _dvisvgm_ requires the Ghostscript dynamically linked shared library _libgs.dylib_.
Installing Ghostscript from Homebrew will provide this library.

```bash
brew install ghostscript
```

The path to _libgs.dylib_ in the `setup` chunk in _index.qmd_ should be general.

Also on macOS this project requires X11, which is easiest to obtain and install from <https://www.xquartz.org/>.

Additionally it is helpful to set the `SHELL` environment variable to the shell you use, e.g., Homebrew `zsh` by setting in your _.Renviron_ file

```
SHELL=/opt/homebrew/bin/zsh
```

(Old note: If you have an Apple Silicon Mac you need to make sure you have Quarto version 1.2.56 or later because then the `deno` executable is arm64 and hence the arm64 _libgs.dylib_ library from Homebrew will work.)

And on macOS you need to make sure the current user has write permission to `/usr/local/bin` by running the following command in Terminal, as per [here](https://yihui.org/tinytex/#installation).

```
sudo chown -R $(whoami) /usr/local/bin
```

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

This works because this repo includes a `DESCRIPTION` file.

### TinyTeX

TinyTeX then needs to be installed with

```r
tinytex::install_tinytex()
```

During a render, TinyTeX will install the LaTeX packages _dvisvgm_ and _pgf_ if they are missing.
