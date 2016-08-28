# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "miriam/map.jinja" import miriam with context %}

include:
  - miriam.install
  - miriam.config

miriam-container:
  dockerng.running:
    - name: {{ miriam.name }}
    - image: {{ miriam.image }}
    - binds: {{ miriam.config }}:/miriam/config.yaml
    - require:
      - dockerng: miriam-image
    - watch:
      - file: miriam-config
