Galaxy
========

Quick hack'y role to install galaxy roles from a role. This role now also support git installs.

Example
-------------------------

Install `nsg.galaxy` to your role path and create a separate playbook.

```
- hosts: localhost
  connection: local
  sudo: no
  roles:
    - { 
        role: nsg.galaxy, 
        galaxy_path: roles,
        galaxy_roles: [
          { name: nsg.heka, version: v1.0 },
          { name: nsg.collectd, git: "https://github.com/nsg/ansible-collectd.git", version: master }
          { name: nsg.graphite, git: "https://github.com/nsg/ansible-graphite.git", version: 1.0.1 }
          { name: foo, git: "https://github.com/nsg/ansible-graphite.git", rev: 4b98bcc }
        ]
      }
```

This will install the role `nsg.heka` from galaxy, nsg.collectd directly from github to `roles/`,
run this like this:

`ansible-playbook setup.yml -i localhost,`

License
-------

MIT
