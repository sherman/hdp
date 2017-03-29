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
