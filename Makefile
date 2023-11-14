
default: example.sh.tex \
	firefox.sh.tex \
	header.html.tex \
	footer.html.tex \
	h1.md.tex \
	h2.md.tex \
	h1.html.tex \
	h2.html.tex \
	p.html.tex \
	emphasis.md.tex \
	emphasis.html.tex \
	ifechogrep.sh.tex \
	whileread.sh.tex \
	transformline.sh.tex \
	url.md.tex \
	url.html.tex \
	list.html.tex \
	list.md.tex \
	iftest.sh.tex \
	ifbra.sh.tex \
	whileold.sh.tex \
	whilenew.sh.tex \
	example.md.tex \
	example.html.tex 

example.html: example.md
	./markdown.sh <example.md >example.html

%.tex: %
	pygmentize -f latex $(*F) > $@

pygments.tex:
	python get_pygments_tex.py > pygments.tex


