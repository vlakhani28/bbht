#!/bin/bash
echo "Installing asset finder"
go get -u github.com/tomnomnom/assetfinder
echo "done"

echo "Installing rsdl"
go get github.com/tismayil/rsdl
go build rsdl.go

echo "Installing amass"
go get -u github.com/caffix/amass
echo "done"

echo "installing gobuster"
go get github.com/OJ/gobuster
echo "done"

echo "installing subjack"
go get github.com/haccer/subjack
echo "done"

echo "installing httprobe"
go get -u github.com/tomnomnom/httprobe
echo "done"

echo "installing dalfox"
go get -v github.com/hahwul/dalfox/v2
echo "done"

echo "installing gau"
go get -u -v github.com/lc/gau
echo "done"

echo "installing BountyIt"
go get -u -v github.com/shivangx01b/BountyIt
echo "done"

echo "installing go"
go get -u github.com/tomnomnom/gf
echo "done"

echo "installing subzy"
go get -u -v github.com/lukasikic/subzy
go install -v github.com/lukasikic/subzy
echo "done"
