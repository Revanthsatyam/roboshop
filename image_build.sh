for i in catalogue mongo user web cart shipping mysql payment ; do
  if [ $i == "mongo" ] ; then
    cd $i ; docker build -t mongodb:v1 . ; cd ..
  else
    cd $i ; docker build -t $i:v1 . ; cd ..
  fi
done