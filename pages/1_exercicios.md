---
layout: default
title: Exercícios
comments: true
permalink: /exercicios/
icon: glyphicon-file
---

<div class="row">
  <div id="myArticle" class="col-sm-9">
    <div class="post-area post">
      <article>
        <h2>Exercícios</h2>
        <p>Esta página contém uma série de exercícios relativos a cada aula do curso.</p>
      </article>
    </div>
  </div>
</div>
<p><br/></p>
<div id="index" class="row">
  <div class="col-sm-9">
    <div class="post-area ">
      <div class="post-list-body">
        <div class="all-posts" post-cate="All">
          {% for post in site.posts reversed %}
            {% if post.tags contains "exercicio" %}
              <a class="post-list-item" href="{{ post.url | prepend: site.baseurl }}">
                <h2>
                {{ post.title }}
                </h2>
                <span class="">{{ post.date | date: "%b %-d, %Y" }}</span>
              </a>
            {% endif %}
            {% if post.tags contains "lab" %}
              <a class="post-list-item" href="{{ post.url | prepend: site.baseurl }}">
                <h2>
                {{ post.title }}
                </h2>
                <span class="">{{ post.date | date: "%b %-d, %Y" }}</span>
              </a>
            {% endif %}
          {% endfor %}
        </div>
        <!-- <div class="posts-in-categories"> -->
        {% for category in site.categories %}
          <div post-cate="{{category | first}}">
            {% for posts in category  %}
              {% for post in posts %}
                {% if post.url %}
                  <a href="{{ post.url }}" class="post-list-item">
                    <h2>
                    {{ post.title }}
                    </h2>
                    <span class="">{{ post.date | date: "%b %-d, %Y" }}</span>
                  </a>
                {% endif %}
              {% endfor %}
            {% endfor %}
          </div>
        {% endfor %}
        <!-- </div> -->
      </div>
    </div>
  </div>
  <div class="col-sm-3">
    <div class="shadow-corner-curl hidden-xs">
      <div class="categories-list-header">
        Categories
      </div>
      
      <a href="javascript:;" class="categories-list-item" cate="All">
        All<span class="my-badge"> {{site.categories | size}}</span>
      </a>
      {% for category in site.categories %}
        <a href="javascript:;" class="categories-list-item" cate="{{ category | first }}">
          {{ category | first }} <span class="my-badge">{{ category | last | size }}</span>
        </a>
      {% endfor %}
    </div>
  </div>
</div>

