---
layout: article
title: Nathan Bergey
---

# {{ site.data.nathanbergey.basics.name }}

_<{{ site.data.nathanbergey.basics.email }}>_

## Summary

{{ site.data.nathanbergey.basics.summary }}

## Experience

--------------------------------------------------------------------------------

{% for job in site.data.nathanbergey.work %}
  **{{ job.position }}** {{ job.startDate | date: "%Y" }}&ndash;{{ job.endDate | date: "%Y" }}
  <br>_{{ job.company }}, <{{ job.website}}>_

  {{ job.summary }}

  <ul>
  {% for highlight in job.highlights %}
    <li>{{ highlight }}</li>
  {% endfor %}
  </ul>
--------------------------------------------------------------------------------

{% endfor %}


## Education

--------------------------------------------------------------------------------

{% for school in site.data.nathanbergey.education %}
  **{{ school.studyType }}, {{ school.area }}**  {{ school.endDate | date: "%Y" }}
  <br>_{{ school.institution }}_

--------------------------------------------------------------------------------

{% endfor %}



Download:

 - In pdf format: [nathanbergey.pdf](nathanbergey.pdf)
 - As json resume (<https://jsonresume.org/schema/>): [nathanbergey.json](nathanbergey.json)
