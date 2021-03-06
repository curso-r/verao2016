---
title: "Aula 01 - Exercícios"
date : 2016-01-18
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



1) Calcule o número de ouro no R.

$$ \frac{1 + \sqrt{5}}{2} $$

<div id="q1"  style="display:none;" class="answer_list">

{% highlight r %}
(1 + sqrt(5))/2
{% endhighlight %}



{% highlight text %}
## [1] 1.618034
{% endhighlight %}
</div>

<button type = "button" onclick="toggle(1);" class = "btn btn-success">+</button>

2) O que dá divisão de 1 por 0? E -1 por 0?

<div id="q2"  style="display:none;" class="answer_list">

{% highlight r %}
1/0
{% endhighlight %}



{% highlight text %}
## [1] Inf
{% endhighlight %}



{% highlight r %}
-1/0
{% endhighlight %}



{% highlight text %}
## [1] -Inf
{% endhighlight %}
</div>

<button type = "button" onclick="toggle(2);" class = "btn btn-success">+</button>

3) Quais as diferenças entre `NaN`, `NULL`, `NA` e `Inf`?

<div id="q3"  style="display:none;" class="answer_list">

{% highlight r %}
# NaN é o resultado de uma operação matemática inválida. Significa Not A Number
0/0
{% endhighlight %}



{% highlight text %}
## [1] NaN
{% endhighlight %}



{% highlight r %}
# NULL é o vazio do R. É como se o objeto não existisse
NULL
{% endhighlight %}



{% highlight text %}
## NULL
{% endhighlight %}



{% highlight r %}
a = NULL
is.null(integer(length = 0)) # veja que um vetor, mesmo sem elementos não é NULL
{% endhighlight %}



{% highlight text %}
## [1] FALSE
{% endhighlight %}



{% highlight r %}
# NA é uma constante lógica do R. Siginifica Not Availlable. NA pode ser 
# convertido para quase todos os tipos de vetores do R. É usado principalmente para
# indicar valores faltantes.
NA
{% endhighlight %}



{% highlight text %}
## [1] NA
{% endhighlight %}



{% highlight r %}
# Inf é significa infinito. É o resultado de operações matemáticas cujo limite é infinito.
1/0
{% endhighlight %}



{% highlight text %}
## [1] Inf
{% endhighlight %}



{% highlight r %}
1/Inf
{% endhighlight %}



{% highlight text %}
## [1] 0
{% endhighlight %}
</div>

<button type = "button" onclick="toggle(3);" class = "btn btn-success">+</button>

4) Tente mentalmente calcular o que dá a conta 5 + 3 * 10 %/% 3 == 15 no R, sem rodar.

5) Adicionando apenas parênteses, faça a expressão acima retornar o resultado contrário.

<div id="q5"  style="display:none;" class="answer_list">

{% highlight r %}
5 + (3 * 10) %/% 3 == 15
{% endhighlight %}



{% highlight text %}
## [1] TRUE
{% endhighlight %}
</div>
<button type = "button" onclick="toggle(5);" class = "btn btn-success">+</button>

6) O que acontece se você rodar:


{% highlight r %}
x <- 4
if(x = 4) {
  'isso aqui apareceu'
}
x
{% endhighlight %}

<div id="q6"  style="display:none;" class="answer_list">

{% highlight r %}
> x <- 4
> if(x = 4) {
Erro: '=' inesperado in "if(x ="
>   'isso aqui apareceu'
[1] "isso aqui apareceu"
> }
Erro: '}' inesperado in "}"
> x
[1] 4
{% endhighlight %}
</div>
<button type = "button" onclick="toggle(6);" class = "btn btn-success">+</button>

7) Como você faria para que o código da pergunta anterior fizesse com que `'isso aqui apareceu'` 
fosse impresso no console mas nenhum erro aparecesse?

<div id="q7"  style="display:none;" class="answer_list">

{% highlight r %}
x <- 4
if(x == 4) {
  'isso aqui apareceu'
}
{% endhighlight %}



{% highlight text %}
## [1] "isso aqui apareceu"
{% endhighlight %}



{% highlight r %}
x
{% endhighlight %}



{% highlight text %}
## [1] 4
{% endhighlight %}
</div>
<button type = "button" onclick="toggle(7);" class = "btn btn-success">+</button>

8) **Difícil**: Usando `for`, `if` e `else` escreva as seguintes frases no console:


{% highlight r %}
> 1 elefante(s) incomoda(m) muita gente
> 2 elefante(s) incomoda(m) incomoda(m) muito mais
> 3 elefante(s) incomoda(m) muita gente
> 4 elefante(s) incomoda(m) incomoda(m) incomoda(m) incomoda(m) muito mais
{% endhighlight %}

*Dica*: Leia o help da função `paste` e preste atenção em todos os seus argumentos.

<div id="q8"  style="display:none;" class="answer_list">

{% highlight r %}
for (i in 1:4){
  if(i %% 2 == 0){
    print(paste(i, "elefante(s)", paste(rep("incomoda(m)", times = i), collapse = " "), "muito mais"))
  } else {
   print(paste(i, "elefante(s) incomoda(m) muita gente")) 
  }
}
{% endhighlight %}



{% highlight text %}
## [1] "1 elefante(s) incomoda(m) muita gente"
## [1] "2 elefante(s) incomoda(m) incomoda(m) muito mais"
## [1] "3 elefante(s) incomoda(m) muita gente"
## [1] "4 elefante(s) incomoda(m) incomoda(m) incomoda(m) incomoda(m) muito mais"
{% endhighlight %}
</div>
<button type = "button" onclick="toggle(8);" class = "btn btn-success">+</button>

9) Crie um vetor com o nome `x` que contenha os números `1, 20, 40, 50, 60` no R.

<div id="q9"  style="display:none;" class="answer_list">

{% highlight r %}
x <- c(1, 20, 40, 50, 60)
{% endhighlight %}
</div>
<button type = "button" onclick="toggle(9);" class = "btn btn-success">+</button>

10) Crie um vetor com o nome `x` de 100 números aleatórios entre 0 e 1.

<div id="q10"  style="display:none;" class="answer_list">

{% highlight r %}
x <- runif(100)
{% endhighlight %}
</div>
<button type = "button" onclick="toggle(10);" class = "btn btn-success">+</button>

11) Calcule a média do vetor criado na questão anterior.

<div id="q11"  style="display:none;" class="answer_list">

{% highlight r %}
mean(x)
{% endhighlight %}



{% highlight text %}
## [1] 0.5177623
{% endhighlight %}
</div>
<button type = "button" onclick="toggle(11);" class = "btn btn-success">+</button>

12) Crie um vetor com 100 elementos. 99 deles são números aleatórios entre 0 e 1 e o último elemento tem o valor `NA`. Calcule também a média deste vetor.

*Dica*: Olhe atentamente os argumentos da função `mean`.

<div id="q12"  style="display:none;" class="answer_list">

{% highlight r %}
x <- c(runif(99), NA)
mean(x, na.rm = T)
{% endhighlight %}



{% highlight text %}
## [1] 0.4428363
{% endhighlight %}
</div>
<button type = "button" onclick="toggle(12);" class = "btn btn-success">+</button>

13) Crie uma função que calcula a média de um vetor. Use `for` ou `while` nesta função.

<div id="q13"  style="display:none;" class="answer_list">

{% highlight r %}
media <- function(x){
  i <- 1
  tamanho <- length(x)
  soma <- 0
  for(i in 1:tamanho){
    soma <- soma + x[i]
  }
  return(soma/tamanho)
}
{% endhighlight %}
</div>
<button type = "button" onclick="toggle(13);" class = "btn btn-success">+</button>

14) Crie uma função que simule um dado, ou seja, gera aleatóriamente um número inteiro entre 1 e 6.

<div id="q14"  style="display:none;" class="answer_list">

{% highlight r %}
dado <- function(){
  sample(1:6, 1)
}
{% endhighlight %}
</div>
<button type = "button" onclick="toggle(14);" class = "btn btn-success">+</button>

15) Crie uma função que simula o lançamento de `n` dados, e devolve a soma de seus resultados.

<div id="q15"  style="display:none;" class="answer_list">

{% highlight r %}
soma_dados <- function(n){
  soma <- 0
  for(i in 1:n){
    soma <- soma + sample(1:6, 1)
  }
  return(soma)
}
{% endhighlight %}
</div>
<button type = "button" onclick="toggle(15);" class = "btn btn-success">+</button>

16) **Difícil** Faça um histograma dos resultados da soma de 3 dados. Isto é, crie um vetor com 1000 resultados que aconteceram após somar 3 dados. Em seguida faça o histograma.

![plot of chunk unnamed-chunk-17](http://curso-r.github.io/verao2016/images/2016-01-18-exercicio-aula1/unnamed-chunk-17-1.png) 

<div id="q16"  style="display:none;" class="answer_list">

{% highlight r %}
resultados <- integer(length = 1000)
for(i in 1:1000){
  resultados[i] <- soma_dados(3)
}
hist(resultados)
{% endhighlight %}
</div>
<button type = "button" onclick="toggle(16);" class = "btn btn-success">+</button>


