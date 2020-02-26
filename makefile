all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	cd ../../../Projects/iOS/Memorii/
	git pull
	cd ../../../Web/amg/memorii/
	cp ../../../Projects/iOS/Memorii/releasenotes.html .
	open .
	open /Applications/Cyberduck.app
	
watch:
	sass --watch style.scss:style.css