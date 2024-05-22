# Redis Ubuntu
This playbook sets up and configures a Redis Sentinel cluster on Ubuntu 22.04 and 20.04 with Trendyol standarts using [davidwittman.redis](https://github.com/DavidWittman/ansible-redis) role. 

Additionally in this playbook, we manage the [mesaguy.prometheus](https://github.com/mesaguy/ansible-prometheus) ansible role as kustomized [mesaguy.prometheus-ty](https://gitlab.trendyol.com/platform/devops/iac/configuration-management/ansible/mesaguy.prometheus-ty/-/tree/master) upon the new base image > 1.3.* has node exporter already installed and cause template errors for service unit files.

You can use sample [inventory.ini](inventory.ini) for installation. 

> Please do not forget to change **redis_sentinel_auth_name** and **redis_password** variables in your inventory.

> Please bear in mind that this playbook only shoudl be applied to clusters which provisioned after base 1.3.* image version!


## Example Usage
- Run Ansible command:
    ```shell
    $ mkdir -p temp && cd temp && git clone git@gitlab.trendyol.com:platform/devops/base/examples/ansible-installation.git && cd apps/redis-ubuntu-new1.3.1
    ```
    ```shell
    $ pip3 install -r requirementstest.txt
    ```
    ```shell
    $ ansible-galaxy install -r requirements.yml --force --ignore-errors
    ```
    ```shell
    $ export ANSIBLE_HOST_KEY_CHECKING=False && ansible-playbook -i inventory.ini playbook.yml -b --private-key=~/.ssh/devops.pem -u pe
    ```


## Provisioning Vms

According to the latest stable base image terraform module [version](https://gitlab.com/trendyol/platform/devops/iac/provisioning/terraform/base/-/tree/master/modules), you can use simply for an instance below tf example to up your machines.

<details>
  <summary>Example terraform file</summary>

```tf
module "redis-order-claim-02" {
  source = "git::ssh://git@gitlab.com:/trendyol/platform/devops/iac/provisioning/terraform/base.git//modules/vcd?ref=12.0.0"
  instance_tags = {
    environment = "prod"
    team        = "order"
    project     = ""
    cluster     = "claim-02"
    app         = "redis"
    service     = "redis"
    subteam     = ""
    responsible = "database-team-a"
  }
  vdc          = "order-1"
  network_name = "order"
  nodes_count  = 0
  flavor_name  = "ty.small"
  image = "base-1.3.3"

}

output "redis-order-claim-02_servers" {
  value = module.redis-order-claim-02.servers
}
```
</details>

## Creating inventory

We are setting up our redis clusters with [ansible playbook](https://gitlab.trendyol.com/platform/devops/base/examples/ansible-installation/-/tree/master/apps/redis-ubuntu-new).

To that, you can simply use and update variables in your inventory.ini file and use below example and may **change** the mentioned fields with vm ***hostname/IPs***:

<details>
  <summary>Example inventory.ini</summary>

```yaml
[redis_master]
rds-p-delivery-delivery-redis-venus-01-base-1 ansible_host=10.47.145.132

[redis_slave]
rds-p-delivery-delivery-redis-venus-01-base-2 ansible_host=10.47.145.133
rds-p-delivery-delivery-redis-venus-01-base-3 ansible_host=10.47.145.134

[redis_sentinel]
rds-p-delivery-delivery-redis-venus-01-base-1 ansible_host=10.47.145.132
rds-p-delivery-delivery-redis-venus-01-base-2 ansible_host=10.47.145.133
rds-p-delivery-delivery-redis-venus-01-base-3 ansible_host=10.47.145.134

[all:vars]
ansible_connection=ssh
ansible_user=pe
ansible_python_interpreter=/usr/bin/python3
ansible_os_family=Debian
redis_port=6379
redis_pidfile=/run/redis/{{ redis_port }}.pid
redis_sentinel_port=26379
redis_sentinel_pidfile=/run/redis/sentinel_{{ redis_sentinel_port }}.pid
redis_nofile_limit=65535
# redis_save is the How frequently to snapshot the database to disk
# by default role variable it is like below but you can set it empty for performance reasons
# redis_save=[]
redis_save=['900 1', '300 10', '60 10000']
redis_version=6.2.5
redis_sentinel_auth_name=team-venus-01
redis_password=password
trendyol_team=team
trendyol_environment=prod
trendyol_location=vcloud
trendyol_cluster_name=team-redis-venus-01
host_key_checking=false
```
</details>

 >   * **redis_sentinel_auth_name** -> sentinel authorization name. will be delivered to the developer team with the below password.
 >        
 >   * **redis_password** -> for example can be nEx-ya5-sso-{{tribe}}
 >        
 >   * **trendyol_team** -> main tribe
 >        
 >   * **trendyol_environment** -> environment of cluster will be located
 >        
 >   * **trendyol_location** -> federation
 >          
 >   * **trendyol_cluster_name** -> cluster name

## Setup Stage

```shell
$ mkdir redis-setup && cd redis-setup && git clone https://gitlab.trendyol.com/platform/devops/base/examples/ansible-installation.git

$ ansible-galaxy install -r requirements.yml --ignore-errors --force

$ export ANSIBLE_HOST_KEY_CHECKING=False && ansible-playbook -i inventory.ini playbook.yml -b --private-key=~/.ssh/devops.pem -u pe
```

## Post Setup

* Ssh into each redis machines and do all changes below:

* > Log flow enable
> *     systemdfiles: (/etc/systemd/system/redis_6379.service || /etc/systemd/system/sentinel_26379.service )

> *     ReadWriteDirectories=-/var/log/redis // add this line

> *     Config files: (/etc/redis/6379.conf  || /etc/redis/sentinel_26379.conf )

> *     logfile “/var/log/redis/redis.log” - logfile “/var/log/redis/sentinel.log” // add this line

* > Auto-failover:
> *     /etc/redis/sentinel_26379.conf

> *     sentinel failover-timeout order_claim_redis 600 // Add this line (ms unit)

* > Key volatile policy:
> *     /etc/redis/sentinel_26379.conf

> *     #maxmemory-policy noeviction // comment out this line
> *     maxmemory-policy volatile-ttl // add this line - according to the maxmemory, deletes oldest keys to keep memory available
> *     maxmemory 28311552kb // add this line


```shell
$ systemctl daemon-reload

$ systemctl restart redis_6379.service

$ systemctl restart sentinel_26379.service
```
### References
* [redis-policies](https://www.dragonflydb.io/faq/how-to-set-eviction-policy-in-redis)
* [redis-sentinel](https://medium.com/@selcukusta/redisin-high-availability-%C3%A7%C3%B6z%C3%BCm%C3%BC-sentinel-d9c2b6b1a616)
* [failover scenario](https://severalnines.com/blog/installing-redis-cluster-cluster-mode-enabled-auto-failover/#:~:text=Redis%20Cluster%20Auto%20Failover)


### Example Scenarios

- To learn the redis role
```shell
    $ redis-cli -h 10.47.103.75 -p 6379 -a nEx-ya5-sso-order info | grep role
```
- To make a sentinel failover
```shell
    $ redis-cli -p 26379 sentinel failover order-claim-02
```

- To learn the redis auth-pass easily
```shell
    $ cat /etc/redis/sentinel_26379.conf | grep auth
```

- To list all keys in redis cli
```shell
    $ keys *
```

- To login sentinel-cli and see master
```shell
    $ redis-cli -h 10.47.103.75 -p 26379

    $ SENTINEL masters
```

- Redis insight
https://redisinsight.trendyol.com/
* admin-{Hasansız}
