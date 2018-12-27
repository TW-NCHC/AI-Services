for arg in "$@"
do 
   if [ "$arg" == "--path" ] || [ "$arg" == "-p" ]
   then
      COPYTOFILE="$2"
   fi
done
echo "Start Process"
echo "Checking for folder"
if [ ! -d "~/.keras/datasets" ]; then
echo "Creating folder"
mkdir ~/.keras/datasets
fi
echo "Moving data to folder"
cp -R /mnt/s3/"$COPYTOFILE"/cifar-10-python.tar.gz ~/.keras/datasets/
tar -C ~/.keras/datasets/  -xvzf ~/.keras/datasets/cifar-10-python.tar.gz
echo "Finished moving data"

