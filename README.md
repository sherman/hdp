Set of minimal ansible deployment roles to roll out Horton Data Platfrom (HDP):

### Software you need
Tested with the next versions of tools:
 * Ansible **2.0.x**
 * Vagrant **1.8.1**


### Roll out the cluster

#### Setup nodes

```bash
sh bootstrap-nodes.sh
```

#### Bootstrap HDP

```bash
sh bootstrap-hdp.sh
```

Then go to ambari server console http://192.168.8.100:8080

#### Known issues

* In case of postgres usage make sure the postgres service is up and running:
```bash
sudo pg_createcluster 9.3 main --start

```

* If you are going to use postgres for a hive metastore installation fix pg_hba.conf and add a jdbc driver
```bash
sudo apt-get install postgresql-jdbc*
sudo ambari-server setup --jdbc-db=postgres --jdbc-driver=/usr/share/java/postgresql-jdbc4.jar
```

