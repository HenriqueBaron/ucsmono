$class = "ucsmonograph"

# Apaga a compila��o anterior
Remove-Item *.cls,*.pdf

# Compila os documentos da classe e da documenta��o
latex ./$class.ins
pdflatex ./$class.dtx
makeindex -s gglo.ist -o ./$class.gls ./$class.glo
makeindex -s gind.ist -o ./$class.ind ./$class.idx
pdflatex ./$class.dtx

# Apaga os arquivos auxiliares
Remove-Item *.aux,*.glo,*.gls,*.gls,*.idx,*.ilg,*.ind,*.log,*.out