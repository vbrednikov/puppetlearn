Customized Mastering Puppet Devops Way
======================================

This is a set of scripts to support docker-based environment  for learning
[Mastering Puppet the devops way by School of Devops](https://www.udemy.com/mastering-puppet-the-devops-way/) course
on udemy.com

In [original version](https://github.com/codespaces-io/codespaces/blob/master/cs-puppet-ci/docker-compose.yml), a puppet
environment consisting of puppet master and 4 nodes is started. Puppet master also launches
[Akurath](https://github.com/codespaces-io/akurath) tool that eats some resources and is not very useful for me.

In addition, after environment startup, nodes should be joined to the puppet and puppet code should be moved to shared dir /workspace.

To solve these problems:

- I replaced puppetmaster node with light version (see Dockerfile-puppetmaster)
- added ansible playbook (haha) that spins up puppet environment: requests certs on nodes and changes code directory.

To start the environment:

```
# docker build -t puppet-master -f Dockerfile-puppetmaster .
# docker-compose up -d && sleep 30
# ansible-playbook -i puppethosts.ini puppetinit.yml
```

