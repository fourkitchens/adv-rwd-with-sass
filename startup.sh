#! /bin/bash

clear

echo "Advanced RWD: Environment Prep Script"
echo
echo "https://github.com/fourkitchens/adv-rwd-with-sass/"
echo

echo "Testing environment:"

RUBY_VERSION=$(ruby -e "print RUBY_VERSION")

if [ "$RUBY_VERSION" = "2.0.0" ]; then
    echo "RUBY VERSION IS 2.0.0."
else
    echo "RUBY VERSION IS $RUBY_VERSION, please install 2.0.0-p241"
    exit 0
fi

if which npm > /dev/null; then
    echo "NPM INSTALLED"
else
    echo "NPM IS NOT INSTALLED, PLEASE INSTALL."
    exit 0
fi

if which bundle > /dev/null; then
    echo "BUNDLER INSTALLED"
else
    echo "BUNDLER IS NOT INSTALLED, INSTALLING..."
    $(gem install bundler)
fi

if which bower > /dev/null; then
    echo "BOWER INSTALLED"
else
    echo "BOWER IS NOT INSTALLED, INSTALLING..."
    $(npm install -g bower)
fi

if which grunt > /dev/null; then
    echo "GRUNT INSTALLED"
else
    echo "GRUNT IS NOT INSTALLED, INSTALLING..."
    $(npm install -g grunt-cli)
fi

echo
echo

echo "ENVIRONMENT READY: RUNNING INSTALLATION."
echo
echo "DOWNLOADING npm MODULES"
$(npm install)

echo "DOWNLOADING BOWER COMPONENTS"
$(bower install)

echo
echo "DOWNLOADING RUBY GEMS WITH BUNDLER"
$(bundle install)

echo
echo "/*****************************************"
echo "******************************************"
echo "*** SUCCESS! YOUR ENVIRONMENT IS READY ***"
echo "******************************************"
echo "*****************************************/"
echo
echo
echo "RUN 'grunt server' to display the slides."
