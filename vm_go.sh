#!/bin/bash

./set_vagrant_env.sh

echo "Bringing up IEX data vm"

vagrant up

echo "Vagrant VM brought up..."


echo "Downloading required data..."
vagrant ssh -c 'cd /vagrant ; ./download.sh'
echo "Download complete!"

echo "Parsing all downloaded data!"
vagrant ssh -c 'cd /vagrant ; ./parse_all.sh'
echo "Parsing complete!!!"


