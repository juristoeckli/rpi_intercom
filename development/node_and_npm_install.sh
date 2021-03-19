echo "Prepare"
echo ""

curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
apt-get install -y nodejs

echo ""
echo ""
echo "Install yarn"

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update
apt-get install yarn


apt install build-essential


exit 0
