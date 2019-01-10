pkgs:
{% if grains['os_family'] == 'Debian' %}
    vim: vim
    python: python
    openssh: openssh-client
{% elif grains['os_family'] == 'RedHat' %}
    vim: vim-enhanced
    python: python
    openssh: openssh
{% elif grains['os_family'] == 'Arch' %}
    vim: vim
    python: python2
    python-pip: python2-pip
    python-imaging: python2-imaging
    openssh: openssh
    libmysqlclient-dev: libmysqlclient
    libmemcached-dev: libmemcached
    libevent-dev: libevent
{% else %}
    vim: vim
    python: python
    openssh: openssh
{% endif %}
