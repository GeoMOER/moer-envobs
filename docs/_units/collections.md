---
title: Units
permalink: /units/index.html 
---

# Course overview
{% for item in site.units %}
  <h3>{{ item.title }}</h3>
  <p>{{ item.description }}</p>
  <p><a href="{{ item.url | prepend: site.baseurl}}">{{ item.title }}</a></p>
  {% for item1 in site.lectures %}
  <p><a href="{{ item1.url | prepend: site.baseurl}}">{{ item1.title }}</a></p>
  {% endfor %}
{% endfor %}
