# apollo_genome_editor (still testing)
### installation on Ubuntu 19.04

`sudo apt-get install zlib1g zlib1g-dev libexpat1-dev libpng-dev libgd-dev build-essential git software-properties-common python make`
#####
`sudo npm install -g yarn`
#####
`sudo apt-get install ant openjdk-8-jdk`
#####
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/  # or set in .bashrc / .profile / .zshrc
export JAVA_HOME=`/usr/libexec/java_home -v 1.8` # OR

sudo apt-get install ant openjdk-8-jdk 

# in .bashrc file, add the following line:
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/

cd ~/software
wget https://github.com/GMOD/Apollo/archive/2.5.0.tar.gz
tar -xvzf 2.5.0.tar.gz
cd Apollo-2.5.0

# following command to test apollo
./apollo run-local

#install PostgreSQL
sudo apt install postgresql postgresql-contrib
#test installation
sudo -u postgres psql -c "SELECT version();"

#create postgres ID: database_user and PASSWD: database_user
sudo su postgres -c "createuser -RDIElPS database_user"

sudo su postgres -c "createdb -E UTF-8 -O database_user apollo-production"

#edit sample-postgres-apollo-config.groovy with postgres ID and PASSWD

cp sample-postgres-apollo-config.groovy apollo-config.groovy

./apollo deploy

export PERL5LIB=/home/fgao/software/Apollo-2.5.0/extlib/lib/perl5:$PERL5LIB

cp target/apollo-2.5.0.war web-app/apollo.war

#Open a local web browser and visit http://localhost:8080/apollo

http://your.jbrowse.root/index.html?data=sample_data/json/volvox
http://your.jbrowse.root/index.html?data=sample_data/json/yeast

#check IP usage and release occupied IP
fuser 8080/tcp
fuser -k 8080/tcp

