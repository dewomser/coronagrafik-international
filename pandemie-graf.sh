#!/bin/bash
cd /home/karl/bin/pandemie/ || exit
phantomjs --disk-cache=false examples/pandemie_de.js
#sleep 4
#phantomjs examples/dom-cut-test.js
#sleep 4
phantomjs --disk-cache=false examples/pandemie_ck.js
#sleep 4
#phantomjs examples/dom-cut-test_us.js
#sleep 4
phantomjs --disk-cache=false examples/pandemie_oe.js
#sleep 4
#phantomjs examples/dom-cut-test_uk.js
#sleep 4
phantomjs --disk-cache=false examples/pandemie_bz.js
#sleep 4
#phantomjs examples/dom-cut-test_tk.js
#sleep 4
montage -borderwidth 10 -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -strokewidth 3 -stroke black -fill white -pointsize 80 -gravity south \( pandemie_de.png -border 5 -annotate 0 Deutschland \) \( pandemie_ck.png -border 5 -annotate 0 Tschechien \) \( pandemie_oe.png -border 5 -annotate 0 Österreich \) \( pandemie_bz.png -border 5 -annotate 0 Brasilien \) -tile 2x2  -mode Concatenate dc.jpg
#sleep 1

