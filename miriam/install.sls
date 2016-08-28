# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "miriam/map.jinja" import miriam with context %}

miriam-image:
  dockerng.image_present:
    - name: {{ miriam.image }}
