if [ "$#" -lt 1 ]; then
  echo "Usage: tex2svg LATEX_CODE (OUTPUT_FILE)"
  exit -1
fi
if [ "$#" -ge 2 ]; then
  OUT_FILE="$2"
else
  OUT_FILE="latex_fig.svg"
fi

sed "s/VAR/$1/g" ~/util/tex2svg/latex_fig_template.tex > ~/util/tex2svg/latex_fig.tex
pdflatex -output-directory ~/util/tex2svg ~/util/tex2svg/latex_fig.tex
pdf2svg ~/util/tex2svg/latex_fig.pdf $OUT_FILE
