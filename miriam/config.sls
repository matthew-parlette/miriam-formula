# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "miriam/map.jinja" import miriam with context %}

miriam-config:
  file.managed:
    - name: {{ miriam.config }}
    - makedirs: True
    - source: salt://miriam/files/config.yaml.jinja
    - template: jinja
    - mode: 600
    - user: root
    - group: root
