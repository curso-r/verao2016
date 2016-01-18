---
layout: page
title: About
comments: true
permalink: /about/
icon: glyphicon-heart
toc: false
---

### Horário e local

#### Período: 

- De 18/01/2016 à 05/02/2016
- Segundas, quartas e sextas das 18:00 às 21:15
- Não haverá aula no dia 25/01/2016

#### Local:

- Av. Prof. Luciano Gualberto, 380 - Butantã, São Paulo - SP, 05508-010.
- Entrando no prédio, é o primeiro laboratório de informática à frente.

<img src="http://curso-r.github.io/verao2016/images/local.gif" />

### Objetivos

Fornecer informações básicas do software estatístico R e expor as principais ferramentas disponíveis atualmente para realização de análises estatísticas de forma produtiva e reproduzível, baseando-se na filosofia `tidy data` e nos pacotes de Hadley Wickham. O curso é considerado de nível intermediário, pois apresenta apenas a forma de utilização de ferramentas úteis, e não abrange tópicos mais profundos como orientação à objetos, o pacote `Rcpp`, entre outros.

### Programa Resumido

O curso é destinado para estudantes que já conhecem ou desejam conhecer o software estatístico R e é focado em ferramentas para aumento da produtividade em análises estatísticas, tanto em relação a tratamento de dados e análise exploratória quanto a produção de relatórios e apresentações. Por utilizar tecnologias de fronteira, o curso mostra uma parte muito importante do R que muitas vezes é desconhecida até mesmo por programadores experientes na linguagem.

O curso foi estruturado em dois módulos. O primeiro módulo é de nivelamento e tem como objetivo introduzir os conceitos básicos de R, sintaxe e ferramentas principais. O segundo módulo foca nos pacotes desenvolvidos por Hadley Wickham para aumento de produtividade, bem como outras ferramentas úteis para ajuste de modelos e produção de relatórios e visualizações dinâmicas.

### Programa

O curso é destinado para estudantes que já conhecem ou desejam conhecer o software estatístico R e é focado em ferramentas para aumento da produtividade em análises estatísticas, tanto em relação ao tratamento de dados e análise exploratória quanto à produção de relatórios e apresentações. Por utilizar tecnologias de fronteira, o curso mostra uma parte muito importante do R que muitas vezes é desconhecida até mesmo por programadores experientes na linguagem.

O curso está estruturado em dois módulos, descritos abaixo.

### Pré-requisitos

O curso não exige nenhum pré-requisito, porém, conhecimento básico de estatística e um contato com alguma linguagem de programação auxiliarão em alguns tópicos.

#### Módulo Básico

* Introdução à linguagem script e vetorização. Definição por gênero e diferença (comparando com C, octave, java, python, etc).
*  Um pouco de sintaxe (principalmente operadores lógicos, `if` e `else`, laços `for` e `while`). 
*  Estruturas de dados.
*  Subsetting.
*  Leitura de bancos de dados (.xls, .csv, .txt).
-  Vocabulário focado em algumas funções essenciais (`summary`, `[`, ``\$``, `%in%`, `print`, `cat`, `str`, `table`,`plot`,  `ifelse` e as funções `*pply`)
*  Criação de gráficos com a função `plot`

#### Módulo Prático

* Manipulação de dados e análise descritiva básica usando `dplyr` e `tidyr`. Conceito de `tidy data`.
* Gramática para gráficos e visualizações com `ggplot2`.
* Ajuste de modelos de regressão e análise multivariada com funções do `base`, `lmer`, `lme4` e `mgcv`.
* Web apps com o `shiny`. 
* Relatórios com RMarkdown e `knitr`.
* Construção de pacotes no R com `devtools` e `roxygen2`.
* Laboratório de R, com um exemplo de banco de dados real para trabalhar com todo o ferramental apresentado.

### Avaliação

**Método:**

Aulas (12h), exercícios para casa e resultados do laboratório (12h).

**Critérios:**

Média ponderada dos laboratórios.

### Instalação do R

- [R cran para windows](https://cran.r-project.org/bin/windows/base/R-3.2.3-win.exe)
- [RStudio para windows](https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-0.99.858.exe  )
- [RTools para windows](https://cran.r-project.org/bin/windows/Rtools/Rtools33.exe)
- [Git para windows](https://github.com/git-for-windows/git/releases/download/v2.7.0.windows.1/Git-2.7.0-32-bit.exe)
- Depois de instalar tudo (nessa ordem), Abrir RStudio e rodar

```
install.packages('devtools')
devtools::install_github('curso-r/mcUFSCar2015')
devtools::install_github('abjur/abjutils')
```
- RStudio > New Project > Version Control > Git
- preencher com [https://github.com/curso-r/verao2016](https://github.com/curso-r/verao2016) em
"Repository URL" e dar OK
- A cada novo dia de aula, dar um 'git pull'

