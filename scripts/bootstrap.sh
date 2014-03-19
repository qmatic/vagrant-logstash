# update apt
sudo apt-get -y update

# install jdk
sudo apt-get -y install openjdk-7-jdk

# install python pip (needed for curator)
sudo apt-get -y install python-pip

# create dir for logstash
sudo mkdir -p /opt/logstash
cd /opt/logstash

# download logstash
sudo wget https://download.elasticsearch.org/logstash/logstash/logstash-1.3.3-flatjar.jar

# create upstart job
sudo cp /vagrant/files/logstash.upstart /etc/init/logstash.conf

# install curator
sudo pip install elasticsearch-curator

# start logstash service
sudo start logstash