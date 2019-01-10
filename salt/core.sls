nginx:
    pkg:
        - installed

git:
    pkg:
        - installed

vim:
    pkg:
        - installed
        - name: {{ pillar['pkgs']['vim'] }}

    file.directory:
        - user: {{ pillar['core']['user'] }}
        - group: {{ pillar['core']['user'] }}
        - makedirs: True
        - name: {{ pillar['core']['home'] }}/.vim/undodir
        - require:
            - pkg: vim

utils:
    pkg:
        - installed
        - names:
            - mlocate

libevent-dev:
    pkg.installed

libmysqlclient-dev:
    pkg.installed

gcc:
    pkg:
        - installed

libmemcached-dev:
    pkg:
        - installed
