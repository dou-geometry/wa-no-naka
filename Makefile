OutputDir = ./out
PdfDir = ./docs
GHC = ghc -dynamic -outputdir $(OutputDir) -no-keep-hi-files
PTEX = ptex2pdf -u -l -ot "-synctex=1 -interaction=nonstopmode -file-line-error-style -shell-escape" -output-directory $(PdfDir)

all: programs cleanTex
programs: mobius waveAnalysis

mobius: prepDir
	$(GHC)  ./Mobius.lhs
	$(PTEX) ./Mobius.lhs
	$(PTEX) ./Mobius.lhs

waveAnalysis: prepDir


prepDir:
	mkdir -p $(OutputDir)
	mkdir -p $(PdfDir)

clean:; rm -rf $(OutputDir) $(PdfDir)

cleanTex: prepDir
	find $(PdfDir)/ -type f -name '*.aux' -delete
	find $(PdfDir)/ -type f -name '*.log' -delete
	find $(PdfDir)/ -type f -name '*.out' -delete
	find $(PdfDir)/ -type f -name '*.pyg' -delete
	find $(PdfDir)/ -type f -name '*.synctex.gz' -delete
	find $(PdfDir)/ -type f -name '*.toc' -delete
docs: cleanTex
	rm -rf $(OutputDir)
program: cleanTex
	rm -rf $(PdfDir)
