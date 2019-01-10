zsh:
    pkg:
        - installed

{{ pillar['core']['user'] }}:
  user.present:
    - fullname: {{ pillar['core']['user'] }}
    - shell: /bin/zsh
    - home: {{ pillar['core']['home'] }}
    - require:
        - pkg: zsh
