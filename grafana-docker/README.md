grafana-server
=========

- Install grafana-server with docker

Requirements
------------

Role Variables
--------------

All variables which can be overridden are stored in defaults/main.yml file with default values.

Dependencies
------------

The following collections are required:
  - community.grafana

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:
```yml
---
- hosts: all
  become: yes
  roles:
    - grafana-docker

```

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
