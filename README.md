Galaxy
========

Quick hack'y role to install galaxy roles from a role.

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
          { name: nsg.heka, version: v1.0 }
        ]
      }
```

This will install the role `nsg.heka` to `roles/`, run this like this:

`ansible-playbook setup.yml -i localhost,`

The role do not understand updates, if you have change the version you need to manually
delete the downloaded role.

License
-------

MIT
