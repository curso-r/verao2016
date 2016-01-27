### Script --- Aula 4 --- ggplot2

library(ggplot2)
library(magrittr)
library(dplyr)
library(tidyr)

# Histograma do preço dos diamantes

head(diamonds)

g <- ggplot(diamonds, aes(price)) +
  geom_histogram(colour = "white", fill = "blue")
g

## Dispersão dos precos vs peso (carat)

g <- ggplot(diamonds, aes(carat, price)) +
  geom_point(alpha = 0.2)
g

g + labs(title = "Gráfico de dispersão", x = "Peso (Quilates)", y = "Preço (U$)")

# Agora a cor dos pontos vai ser pela qualidade do corte do diamante:

g <- ggplot(diamonds, aes(carat, price, colour = cut)) +
  geom_point(alpha = 0.2)
g

# Não deu pra ver, direito, usar facet?

g + facet_wrap(~cut)


head(economics)

# Queremos plotar taxa desemprego e tempo de duracao do desemprego cada um em uma linha e com cores diferentes. 
# Os valores devem ser padronizados.

g <- economics %>% 
  select(date, unemploy, uempmed) %>%
  gather(indice, valor, -date) %>%
  group_by(indice) %>% mutate(valor = (valor - min(valor))/(max(valor) - min(valor))) %>%
  ggplot(aes(date, valor, colour = indice)) + 
  geom_line()

plot(g)


g + scale_colour_manual(
  "Índices Padronizados", 
  values = c("red","blue"), 
  labels = c("tempo mediano de desemprego", "numero de desempregados"))



# Colocar uma reta de regressão em um gráfico de dispersão.

g <- ggplot(mtcars, aes(wt, mpg)) +
  geom_point()
g

coef(lm(mpg ~ wt, data = mtcars))

g +  geom_abline(intercept = 37, slope = -5, colour = "blue")

g + stat_smooth(method = "lm", se = F)

g +  geom_abline(intercept = 37, slope = -5, colour = "blue") + 
  stat_smooth(method = "lm", se = F)


# Gráfico de barras: Quantidade de veículos por classe
head(mpg)

ggplot(mpg, aes(class)) + geom_bar()


# Quantidade de carros por classe, para cada ano

ggplot(mpg, aes(class)) + geom_bar() + facet_grid(year~.)
ggplot(mpg, aes(class)) + geom_bar(aes(fill = factor(year)), position = "fill")
ggplot(mpg, aes(class)) + geom_bar(aes(fill = factor(year)), position = "dodge")












### Banco de dados: Flow of the River Nile
#################################################

Nile

class(Nile)

# Fazer um gráfico da série
x <- data.frame(flow=Nile)

data.frame(flow=Nile) %>%
  mutate(ano=(1871:1970)) %>%
  ggplot() +
  geom_line(aes(x=ano, y=flow)) +
  geom_point(aes(x=ano, y=flow), alpha=.2)


# ESTUDE!!! (mas nao use)
###qplot(Nile)


### Banco de dados: Accidental Deaths in the US 1973-1978
###########################################################
library(lubridate)

data.frame(USAccDeaths) %>%
  mutate(data_date=ymd('1973-01-01') + months(0:71),
         data_date=as.Date(data_date)) %>%
  ggplot() +
  geom_line(aes(x=month(data_date),
                y=USAccDeaths,
                colour=factor(year(data_date))))

data.frame(USAccDeaths) %>%
  mutate(data_date=ymd('1973-01-01') + months(0:71),
         data_date=as.Date(data_date),
         ano=factor(year(data_date))) %>%
  ggplot() +
  geom_line(aes(x=month(data_date),
                y=USAccDeaths)) +
  facet_wrap(~ano)

data.frame(USAccDeaths) %>%
  mutate(data_date=ymd('1973-01-01') + months(0:71),
         data_date=as.Date(data_date),
         ano=factor(year(data_date))) %>%
  ggplot() +
  geom_boxplot(aes(x=factor(month(data_date)),
                   y=USAccDeaths))

# 1) Fazer um gráfico da série

# 2) Fazer um gráfico do número médio de mortes por mês no período


### Banco de dados: Survival of passengers on the Titanic
###########################################################


# Fazer um gráfico de barras do número de sobreviventes/mortos dividindo
# por classe, gênero e idade.

data.frame(Titanic) %>%
  ggplot() +
  geom_bar(aes(x=Age, y=Freq, fill=Survived),
           stat='identity',
           position='dodge') +
  facet_wrap(~Class + Sex, scales='free_y')

data.frame(Titanic) %>%
  ggplot() +
  geom_bar(aes(x=Age))


### Banco de dados: New York Air Quality Measurements
###########################################################

airquality %>% head

# 1) Fazer um histograma da concentração de ozônio diária para cada mês considerado.

airquality %>%
  ggplot() +
  geom_histogram(aes(x=Ozone, y=..density..), fill='white', colour='black', binwidth=20) +
  geom_density(aes(x=Ozone), fill='blue', alpha=0.2, adjust=1) +
  facet_wrap(~Month)

# 2) Investigar indícios de associação entre o ozôniote a temperatura e ozônio
#    e a velocidade do vento.


### Banco de dados: Locations of Earthquakes off Fiji
###########################################################

quakes

# 1) Fazer um histograma da magnitude

quakes %>%
  ggplot() +
  geom_histogram(aes(x=mag), binwidth=.1, fill='white', colour='black') +
  theme_bw()

# 2) Fazer um mapa das ocorrências

mapa <- map_data("world")

quakes %>%
  ggplot(aes(x=long, y=lat)) +
  geom_density2d(aes(size=stations)) +
  geom_map(aes(map_id=region), map=mapa, data=mapa)
