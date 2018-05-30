all: index.html

lob.html: ../20180528-thalesians-vienna-seminar/lob.html
	cp ../20180528-thalesians-vienna-seminar/lob.html .

heston.html: ../20180528-thalesians-vienna-seminar/heston.html
	cp ../20180528-thalesians-vienna-seminar/hestonlob.html .

rounded_heston.html: ../20180528-thalesians-vienna-seminar/rounded_heston.html
	cp ../20180528-thalesians-vienna-seminar/rounded_heston.html .

sp500.html: ../20180528-thalesians-vienna-seminar/sp500.html
	cp ../20180528-thalesians-vienna-seminar/sp500.html .

scrollable.css: ../20180528-thalesians-vienna-seminar/scrollable.css
	cp ../20180528-thalesians-vienna-seminar/scrollable.css .

MicrostructureOfOptionPrices.md: ../20180528-thalesians-vienna-seminar/MicrostructureOfOptionPrices.md
	cp ../20180528-thalesians-vienna-seminar/MicrostructureOfOptionPrices.md .

References.bib: ../20180528-thalesians-vienna-seminar/References.bib
	cp ../20180528-thalesians-vienna-seminar/References.bib .

index.html: MicrostructureOfOptionPrices.md References.bib scrollable.css lob.html sp500.html heston.html rounded_heston.html
	pandoc -s -c scrollable.css -t revealjs -V theme=white -V revealjs-url=./ --mathjax --toc --toc-depth=1 -o index.html --bibliography References.bib MicrostructureOfOptionPrices.md
