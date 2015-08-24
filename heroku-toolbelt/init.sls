heroku-toolbelt:
{% if grains['os_family'] == 'Debian' %}
  pkg.installed:
    - name: heroku-toolbelt
  pkgrepo.managed:
    - file: /etc/apt/sources.list.d/heroku-toolbelt.list
    - name: deb http://toolbelt.heroku.com/ubuntu ./
    - key_url: https://toolbelt.heroku.com/apt/release.key
    - require_in:
      - pkg: heroku-toolbelt
    - require:
      - pkg: heroku-toolbelt_python-software-properties

heroku-toolbelt_python-software-properties:
  pkg.installed
{% endif %}
