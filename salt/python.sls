python:
    pkg:
        - installed
        - names:
            -  {{ pillar['pkgs']['python'] }}
{% if grains['os_family'] != 'Arch'  %}
            - python-dev
{% endif %}

pip:
    pkg.installed:
        - name: python-pip
        - require:
            - pkg: python

python-imaging:
    pkg.installed:
        - require:
            - pkg: python

pip-pkgs:
    pip.installed:
        - names:
            - pylint
            - ipython
            - ipdb
            - tornado
        - require:
            - pkg: pip

gevent:
    pip.installed:
        - require:
            - pkg: libevent-dev
            - pkg: gcc

distribute:
    pip.installed:
        - upgrade: True

MySQL-python:
    pip.installed:
        - require:
            - pkg: libmysqlclient-dev
            - pip.installed: distribute

virtualenvwrapper:
    pip.installed:
        - name: virtualenvwrapper
        - require:
            - pkg: pip
    file.append:
        - name: {{ pillar['core']['home'] }}/.zshrc
        - text:
            - export WORKON_HOME=$HOME/.virtualenvs
            - export PROJECT_HOME=$HOME/Devel
            - source /usr/local/bin/virtualenvwrapper.sh
        - require:
            - pkg: zsh
