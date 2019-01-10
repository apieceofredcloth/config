nodejs:
    pkg.installed

npm-pkgs:
    npm.installed:
        - names:
            - jshint
        - require:
            - pkg: nodejs
