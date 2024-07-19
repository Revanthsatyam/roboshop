for i in catalogue mongo user web ; do
	cd $i ; docker build -t $i:v1 . ; cd ..
done