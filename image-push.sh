for i in catalogue mongo user web cart shipping mysql payment ratings ; do
  if [ $i == "mongo" ] ; then
    cd $i ; docker build -t revanthsatyam/mongodb:v1 . ; docker push revanthsatyam/mongodb:v1 ; cd ..
  else
    cd $i ; docker build -t revanthsatyam/$i:v1 . ; docker push revanthsatyam/$i:v1; cd ..
  fi
done