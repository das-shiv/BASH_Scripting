# This script will setup a website from tooplate.com

#Variable declaration

PACKAGE="httpd wget unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip"
ART_NAME="2129_crispy_kitchen"
TEMPDIR="/tmp/webfiles"


#Installing packages

echo "-----------------------------------------"
echo "Installing required packages"
echo "-----------------------------------------"
sudo yum install $PACKAGE -y > /dev/null
echo

# Start and enable the server

echo "-----------------------------------------"
echo "Starting and Enabling the server"
echo "-----------------------------------------"

sudo systemctl start $SVC
sudo systemctl enable $SVC

# Create a temp directory to download website files

echo "-------------------------------------------"
echo "Creating a temporary directory"
echo "--------------------------------------------"
mkdir -p $TEMPDIR
cd $TEMPDIR

echo "Downloading and setting up website files"

wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html


# Restart the servers

echo "----------------------------------------------"
echo "Restarting the servers"
echo "----------------------------------------------"

sudo systemctl restart $SVC



echo "----------------------------------------------"
echo "Cleaning up junk files"
echo "----------------------------------------------"

sudo rm -rf $TEMPDIR


sudo systemctl status $SVC
sudo ls /var/www/html


