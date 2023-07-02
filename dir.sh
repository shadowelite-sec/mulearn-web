#!/bin/sh
# Author: @shadowelite
# Date: 26-11-2022
# Description: To Generate Html anchor Tags
# https://github.com/shadowelite-sec
#
DIR=$(ls -d */)
gen() {
touch ./index.html
echo "<!DOCTYPE html>
<html lang=\"en\">

<head>
  <meta charset=\"utf-8\"/>
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />
  <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\"/>
  <title>Programs</title>
</head>

<body>

  <h1>Link To Programs</h1>

  <p>~by Alan.S</p>" > ./index.html

 echo -e "\n <ul>
 " >> ./index.html

 for i in $DIR;do echo "<li><a href=\"$i\"/>$i</a></li><br>" >> ./index.html;done

 echo -e "\n</ul>

 </body>" >>./index.html
}

if [[ $1 == "-v" ]];then
	echo "Current Generated Tags"
	echo "-----------------------"
	for i in $DIR;do echo "<li><a href=\"$i\"/>$i</a></li><br>";done
	echo "-----------------------"
	gen
else
	 gen
fi
