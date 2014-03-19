# vagrant-logstash #

## Description ##
Install [Logstash](http://logstash.net) in an Ubuntu 12.04 VM using [Vagrant](http://www.vagrantup.com).

Provides a base VM for quickly setting up a standalone Logstash instance to analyse logs.

## Requirements ##
* [Vagrant](http://www.vagrantup.com) 


## Configuration ##
Configuration is provided to parse and index logs for Orchestra R4 and R5 by default, the configuration file can 
be found in /conf/logstash.conf.

## Using ##

* Check out this repo: 

		git clone https://github.com/qmatic/vagrant-logstash

* Run `vagrant up` from the base dir.

* Open browser to [http://localhost:9292/](http://localhost:9292/) once machine booted and provisioned.
	

To index log files copy the files into the folder /logs/r4/ or /logs/r5/ for Orchestra R4 and R5 respectively. 

Note that for Orchestra R4 the wrapper logs are expected.

A sample dashboard is available and can be loaded via the Logstash [Kabana](http://www.elasticsearch.org/overview/kibana/) user interface by selecting open -> advanced
and import the file /files/orchestra-logs-dashboard.json.

The [Elasticsearch Curator](http://www.elasticsearch.org/blog/curator-tending-your-time-series-indices/) script is also installed to make 
it easier to purge indexes from Elasticsearch.