# Within HMT VM, run HMT-MOM's palView task:

if [ $# -eq 1 ]; then

    PALFILE=/vagrant/alums1/${1}/collections/paleography.csv

else

    PALFILE=/vagrant/alums1/collections/paleography.csv
fi






cd /vagrant/hmt-mom

gradle -Ppaleo=$PALFILE palView

