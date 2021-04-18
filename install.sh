#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade


sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt-get install -y xargs
sudo apt-get install -y screen


echo "installing bash_profile aliases from recon_profile"
git clone https://github.com/nahamsec/recon_profile.git
cd recon_profile
cat bash_profile >> ~/.bash_profile
source ~/.bash_profile
cd ~/tools/
echo "done"
					
#Don't forget to set up AWS credentials!
echo "Don't forget to set up AWS credentials!"
apt install -y awscli
echo "Don't forget to set up AWS credentials!"



#create a tools folder in ~/
mkdir ~/tools
cd ~/tools/


#install chromium
echo "Installing Chromium"
sudo snap install chromium
echo "done"

echo "installing JSParser"
git clone https://github.com/nahamsec/JSParser.git
cd JSParser*
sudo python setup.py install
cd ~/tools/
echo "done"

echo "installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip install -r requirements.txt
cd ~/tools/
echo "done"


echo "installing teh_s3_bucketeers"
git clone https://github.com/tomdev/teh_s3_bucketeers.git
cd ~/tools/
echo "done"


echo "installing wpscan"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
sudo gem install bundler && bundle install --without test
cd ~/tools/
echo "done"

echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/tools/
echo "done"


echo "installing lazys3"
git clone https://github.com/nahamsec/lazys3.git
cd ~/tools/
echo "done"

echo "installing virtual host discovery"
git clone https://github.com/jobertabma/virtual-host-discovery.git
cd ~/tools/
echo "done"


echo "installing sqlmap"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/tools/
echo "done"

echo "installing knock.py"
git clone https://github.com/guelfoweb/knock.git
cd ~/tools/
echo "done"

echo "installing lazyrecon"
git clone https://github.com/nahamsec/lazyrecon.git
cd ~/tools/
echo "done"

echo "installing nmap"
sudo apt-get install -y nmap
echo "done"

echo "installing massdns"
git clone https://github.com/blechschmidt/massdns.git
cd ~/tools/massdns
make
cd ~/tools/
echo "done"

echo "installing asnlookup"
git clone https://github.com/yassineaboukir/asnlookup.git
cd ~/tools/asnlookup
pip install -r requirements.txt
cd ~/tools/
echo "done"

echo "installing unfurl"
wget --no-check-certificate -c https://github.com/tomnomnom/unfurl/releases/download/v0.0.1/unfurl-linux-amd64-0.0.1.tgz
tar xzf unfurl-linux-amd64-0.0.1.tgz
sudo mv unfurl /usr/bin/

echo "installing crtndstry"
git clone https://github.com/nahamsec/crtndstry.git
echo "done"

echo "downloading Seclists"
cd ~/tools/
git clone https://github.com/danielmiessler/SecLists.git
cd ~/tools/SecLists/Discovery/DNS/
##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED
cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
cd ~/tools/
echo "done"

echo "downloading nuclei"
wget --no-check-certificate -c https://github.com/projectdiscovery/nuclei/releases/download/v2.3.4/nuclei_2.3.4_linux_amd64.tar.gz
tar -xzvf nuclei_*.tar.gz
mv nuclei /usr/local/bin/nuclei
rm nuclei_2.3.4_linux_amd64.tar.gz

echo "downloading httpx"
wget --no-check-certificate -c https://github.com/projectdiscovery/httpx/releases/download/v1.0.5/httpx_1.0.5_linux_amd64.tar.gz
tar -xvf httpx_*.tar.gz
mv httpx /usr/local/bin/httpx
rm httpx_1.0.5_linux_amd64.tar.gz
rm README.md
pip3 install waybackpy
git clone https://github.com/projectdiscovery/nuclei-templates.git

echo "downloading findomain"
wget --no-check-certificate -c https://github.com/Findomain/Findomain/releases/download/4.0.1/findomain-linux
chmod +x findomain-linux

echo "downloading aquatone"
wget --no-check-certificate -c https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
unzip aquatone_*.zip
chmod +x aquatone
rm aquatone_*.zip
rm README.md

echo "downloading ffuf"
wget --no-check-certificate -c https://github.com/ffuf/ffuf/releases/download/v1.2.1/ffuf_1.2.1_linux_amd64.tar.gz
tar -xzvf ffuf_*.tar.gz
chmod +x ffuf
rm ffuf_*.tar.gz


echo "downloading ParamSpider"
git clone https://github.com/devanshbatham/ParamSpider
pip3 install -r ParamSpider/requirements.txt

pip3 install gittyleaks

echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in ~/tools"
ls -la
echo "One last time: don't forget to set up AWS credentials in ~/.aws/!"
