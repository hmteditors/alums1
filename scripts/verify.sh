
if [ $# -eq 2 ]; then
    CONF=/vagrant/alums1/${2}/configs/vm-mom-config.gradle
elif [ $# -eq 1 ]; then
    CONF=/vagrant/alums1/configs/vm-mom-config.gradle
else 
    echo "Usage: sh verify.sh URN" [SUBDIRECTORY]
    exit
fi

echo "Verifying from configuration in $CONF"

cd /vagrant/hmt-mom

echo "Cleaning previous HMT MOM results..."
gradle clean

echo Beginning verification for folio $1

gradle -Pfolio=$1 -Pconf=$CONF verify
