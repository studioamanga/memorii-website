all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	git -C ../../../Projects/iOS/Memorii/ pull
	cp ../../../Projects/iOS/Memorii/releasenotes.html .
	open .
	open /Applications/Cyberduck.app
	
watch:
	sass --watch style.scss:style.css

v4:
	haml -f html5 index.html.haml v4.html
	sass --watch style.scss:style-v4.css
