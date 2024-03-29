# tex2svg

Convert latex to svg. A typical use would be to turn formulas into images, in order to be used in presentations or other integrated visualizations.

## Usage

Call the program as ``tex2svg LATEX_CODE [TARGET_FILE.svg]``. Example: 

```sh
tex2svg '$$\exp(i\cdot\pi) + 1 = 0$$' fig.svg
```

## Requirements

The tool requires ``pdflatex``, ``pdf2svg`` to be available. These can easily be installed via
 
 ```sh
 sudo apt install pdflatex pdf2svg
 ```
 
## Installation

Currently, there is no automated installation. However, it's quite simple:

```sh
mkdir ~/lib ~/bin
git clone https://github.com/yannikschaelte/tex2svg ~/lib/tex2svg
ln -s ~/lib/tex2svg/tex2svg ~/bin/tex2svg
```

Last, make sure that ``tex2svg`` can be found, e.g. via ``export PATH=$PATH:~/bin`` in `.bashrc`.
