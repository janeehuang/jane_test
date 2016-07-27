find . -name "*.log" -print
cp *.log B
cd B
find *.log | while read line; 
do
	cp $line `date +%Y%m%d-%H%M`.$line
	mv -f  `date +%Y%m%d-%H%M`.$line C 
done

