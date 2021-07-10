yourfilenames=`echo */`
for eachfile in $yourfilenames
do
   stow -D $eachfile
   stow $eachfile
done
