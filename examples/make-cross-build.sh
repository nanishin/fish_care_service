#!/bin/sh

rm arduino_feed_control
rm -rf src pkg

CURRENT_PATH=`pwd`

export GOPATH=$CURRENT_PATH
export GOOS=darwin
#export GOOS=linux
#export GOARCH=arm

go get -v github.com/nanishin/goduino
cd $GOPATH/src/github.com/tarm/serial
go build
cd $GOPATH/src/github.com/nanishin/goduino/firmata
go build
cd $GOPATH/src/github.com/nanishin/goduino
go build
#go get -v github.com/nanishin/telebot
#cd $GOPATH/src/github.com/nanishin/telebot
#go build

cd $GOPATH
go build arduino_feed_control.go