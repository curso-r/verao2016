---
title: "Aula 02 - Exercícios"
date : 2016-01-20
layout: post
comments: true
tags: exercicio
category: exercicio
---

<script>
  var toggle = function(i) {
  var mydiv = document.getElementById('q' + i);
  if (mydiv.style.display === 'block' || mydiv.style.display === '')
    mydiv.style.display = 'none';
  else
    mydiv.style.display = 'block'
  }
</script>

## Aula 03

### Manipulação de dados

O pacote `swirl` é uma ótima maneira de exercitar e aprimorar seus conhecimentos
em R. O mais legal desse pacote é que para ele funcionar você só precisa do 
RStudio na sua máquina. No RStudio, instale o pacote `swirl`, usando


{% highlight r %}
install.packages('swirl')
{% endhighlight %}

Faça os exercícios de "getting and cleaning data" do curso (em inglês). Rode
o código abaixo para baixar os dados do curso, rode `swirl()` e siga as 
instruções.


{% highlight r %}
library(swirl)
install_from_swirl('Getting and Cleaning Data')
swirl()
{% endhighlight %}

Boa sorte! :)

