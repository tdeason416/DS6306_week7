all: words.txt

clean:
	rm -f words.txt histogram.txt
							
words.txt:
	Rscript -e 'download.file("https://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", method="curl", quiet = TRUE)'

histogram.tsv: histogram.r words.txt



