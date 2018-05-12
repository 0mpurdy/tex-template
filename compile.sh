filename="template"
bibname="project"
outdir="out"

mkdir $outdir

function compile {
  echo 'Starting compilation'
  lualatex --output-directory=$outdir ${filename}
  echo 'second'
  biber "${outdir}/${filename}"
  echo 'third'
  lualatex --output-directory=$outdir ${filename}
  echo 'Finished compiling'
}

cp "${bibname}.bib" "${outdir}/${bibname}.bib"

compile

see "${outdir}/${filename}.pdf"
