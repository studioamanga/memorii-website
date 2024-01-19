all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	git -C ~/Developer/Memorii/ pull
	cp ~/Developer/Memorii/releasenotes.html .
	cp ~/Developer/Memorii/releasenotes.json .
	cp ~/Developer/Memorii/releasenotes.xml .
	open .
	open /Applications/Cyberduck.app
	
watch:
	sass --watch style.scss:style.css
