---
layout: article
title: Nathan Bergey
---

# {{ site.data.nathanbergey.basics.name }}

_<{{ site.data.nathanbergey.basics.email }}>_

## Summary

{{ site.data.nathanbergey.basics.summary }}

## Work Experience

--------------------------------------------------------------------------------

{% for job in site.data.nathanbergey.work %}
  **{{ job.position }}** &nbsp; {{ job.startDate | date: "%Y" }}&ndash;{{ job.endDate | date: "%Y" }}
  <br>_{{ job.company }}{% if job.website %}, <{{ job.website}}>{% endif %}_

  {{ job.summary }}

  <ul>
  {% for highlight in job.highlights %}
    <li>{{ highlight }}</li>
  {% endfor %}
  </ul>
--------------------------------------------------------------------------------

{% endfor %}

## Volunteer Work

--------------------------------------------------------------------------------

{% for job in site.data.nathanbergey.volunteer %}
  **{{ job.position }}** {{ job.startDate | date: "%Y" }}&ndash;{{ job.endDate | date: "%Y" }}
  <br>_{{ job.organization }}, <{{ job.website}}>_

  {{ job.summary }}

  <ul>
  {% for highlight in job.highlights %}
    <li>{{ highlight | markdownify }}</li>
  {% endfor %}
  </ul>
--------------------------------------------------------------------------------

{% endfor %}



## Education

--------------------------------------------------------------------------------

{% for school in site.data.nathanbergey.education %}
  **{{ school.studyType }}, {{ school.area }}** &nbsp; {{ school.endDate | date: "%Y" }}
  <br>_{{ school.institution }}_

{% endfor %}



## Skills

--------------------------------------------------------------------------------

{% for skill in site.data.nathanbergey.skills %}
  <strong style="line-height: 24px;">{{ skill.name }}</strong> &nbsp; {% for tag in skill.keywords %}<span class="tag" style="margin-left: 0.2em;">{{ tag }}</span> {% endfor %}
{% endfor %}



## Interests
--------------------------------------------------------------------------------

{% for interest in site.data.nathanbergey.interests %}
  <strong style="line-height: 24px;">{{ interest.name }}</strong> &nbsp; {% for tag in interest.keywords %}<span class="tag" style="margin-left: 0.2em;">{{ tag }}</span> {% endfor %}
{% endfor %}


<section markdown="1">
Download this docuement:

 - In pdf format: [nathanbergey.pdf](nathanbergey.pdf)
 - As json resume (<https://jsonresume.org/schema/>): [nathanbergey.json](nathanbergey.json)
<section>
