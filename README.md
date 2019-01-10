Some config files
===

Installation
---

#### by script

    $ bash bootstrap.sh


#### Or maybe u prefer saltstack

1. copy salt and pillar directories to /srv

1. install salt-minion

1. update /etc/salt/minion

    `file_client: local`

1. install vim plugins

    `vim -c 'BundleInstall'`

1. run

    `salt-call state.highstate`
