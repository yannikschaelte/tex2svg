# tex2svg

Convert latex to svg. A typical use would be to turn formulas into images, in order to be used in presentations or other integrated visualizations.

## Usage

Call the program as ``tex2svg LATEX_CODE TARGET_FILE.svg``. Example: 

```sh
tex2svg '\\[\\exp(i\\cdot\\pi) + 1 = 0\\]' fig.svg
```

## Requirements

The tool requires ``pdflatex``, ``pdf2svg`` to be available. These can easily be installed via
 
 ```sh
 sudo apt install pdflatex pdf2svg
 ```
 
## Installation

Currently, there is no automatic installation provided. However, it's not too difficult nonetheless. Just do:

```sh
git clone https://github.com/yannikschaelte/tex2svg ~/util/tex2svg
ln -s ~/util/tex2svg/tex2svg.sh ~/bin/tex2svg
```

Then make sure that ``~/bin`` is contained in the path, such that ``tex2svg`` can be found.
