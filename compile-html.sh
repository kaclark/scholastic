mkdir -p dist/lectures
mkdir -p dist/problemsets
mkdir -p dist/exams

cd src

cp ./main.py ../dist && cp ./pyscript.json ../dist && cp -r archive ../dist/

COMPILE_TARGETS=$(find . -name "*.typ") 

for i in $COMPILE_TARGETS; do 
	echo $i
	if [ $i == "./index.typ" ]; then 
		#typst compile --features html --format html $i "../dist/index.html"
    		cp "./index.html" "../dist" && cp $i "../dist"
    		echo "index is compiled later via html embedded javascript"
	elif [ $i == "./lib.typ" ]; then
		echo "lib.typ should not be directly compiled"	
	elif [ $(echo $i | cut -d '/' -f 3) == "lib.typ" ]; then
		echo "subdir level lib.typ should not be directly compiled"
	else
		DIR=$(echo $i | cut -d '/' -f 2)
		FILE=$(echo $i |cut -d '/' -f 3 | cut -d '.' -f 1)
	  HTML_FILEPATH="../dist/$DIR/$FILE.html"
		echo $HTML_FILEPATH; 
		typst compile --format html --features html $i $HTML_FILEPATH
    echo "<link rel="stylesheet" type="text/css" href="test_styles_out.css" />" >> $HTML_FILEPATH
	fi
done

#leave source; go back to root
cd ..

tailwindcss -i src/lectures/test_styles.css -o dist/lectures/test_styles_out.css
tailwindcss -i src/problemsets/test_styles.css -o dist/problemsets/test_styles_out.css
tailwindcss -i src/exams/test_styles.css -o dist/exams/test_styles_out.css
