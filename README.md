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
        ]
      }
```

This will install the role `nsg.heka` from galaxy, nsg.collectd directly from github to `roles/`,
run this like this:

`ansible-playbook setup.yml -i localhost,`

The role do not understand updates, if you have change the version you need to manually
delete the downloaded role.

License
-------

MIT
