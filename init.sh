#!/bin/bash

sudo apt-get update

# base install
sudo apt-get -y install git
sudo apt-get -y install emacs24-nox
sudo apt-get -y install build-essential
sudo apt-get -y install python-dev
sudo apt-get -y install python-setuptools
sudo apt-get -y install python-numpy
sudo apt-get -y install python-scipy
sudo apt-get -y install python-matplotlib
sudo apt-get -y install ipython
sudo apt-get -y install ipython-notebook
sudo apt-get -y install python-pandas
sudo apt-get -y install python-sympy
sudo apt-get -y install python-nose
sudo apt-get -y install libatlas-dev
sudo apt-get -y install libatlas3gf-base
sudo apt-get -y install ntp

# install pip
sudo apt-get -y install python-pip


# install dot emacs
cp dotemacs ~/.emacs

# install postgres python driver
sudo apt-get -y build-dep python-psycopg2
sudo pip install psycopg2

# install scikit learn
sudo pip install scikit-learn

# install postgres
sudo apt-get -y install postgresql postgresql-contrib postgresql-client

# install postgis
sudo apt-get -y install postgis

#create user
USER='python'
PASSWD='python'
DBNAME='sandbox'
sudo su postgres -c "psql -f createdb.sql -v passwd=$PASSWD -v user=$USER -v dbname=$DBNAME"

sudo cp pg_hba.conf /etc/postgresql/9.3/main/pg_hba.conf
sudo cp postgresql.conf /etc/postgresql/9.3/main/postgresql.conf
sudo service postgresql restart

exit