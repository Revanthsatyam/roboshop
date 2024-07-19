for i in catalogue mongo user web ; do
  if [ $i == "mongo" ] ; then
    i="mongodb"
  fi
	cd $i ; docker build -t $i:v1 . ; cd ..
done