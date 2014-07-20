# Within HMT VM, run HMT-MOM's palView task:

PALFILE=/vagrant/alums1/hmt-5/collections/paleography.csv

cd /vagrant/hmt-mom

gradle -Ppaleo=$PALFILE palView

