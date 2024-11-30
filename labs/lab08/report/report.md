---
## Front matter
title: "Отчёта по лабораторной работе №8"
subtitle: "Программирование цикла. Обработка аргументов командной строки."
author: "Сидорова Арина Валерьевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобретение навыков написания программ с использованием циклов и обработкой
аргументов командной строки.

# Выполнение лабораторной работы

## Реализация циклов в NASM

Создаем каталог для программ ЛБ8, и в нем создаем файл (рис. @fig:001).

![Создаем каталог с помощью команды mkdir и файл с помощью команды touch](image/1.png){#fig:001 width=70%}

Открываем файл в Midnight Commander и заполняем его в соответствии с листингом 8.1 (рис. @fig:002).

![Заполняем файл](image/2.png){#fig:002 width=70%}

Создаем исполняемый файл и запускаем его (рис. @fig:003).

![Запускаем файл и проверяем его работу](image/3.png){#fig:003 width=70%}

Снова открываем файл для редактирования и изменяем его, добавив изменение значения регистра в цикле (рис. @fig:004).

![Изменяем файл](image/4.png){#fig:004 width=70%}

Создаем исполняемый файл и запускаем его (рис. @fig:005).

![Запускаем файл и смотрим на его работу](image/5.png){#fig:005 width=70%}

Регистр ecx принимает значения 9,7,5,3,1(на вход подается число 10, в цикле label данный регистр уменьшается на 2 командой sub и loop).

Число проходов цикла не соответсвует числу N, так как уменьшается на 2.

Снова открываем файл для редактирования и изменяем его, чтобы все корректно работало (рис. @fig:006).

![Редактируем файл](image/6.png){#fig:006 width=70%}

Создаем исполняемый файл и запускаем его (рис. @fig:007).

![Проверяем, сошелся ли наш вывод с данным в условии выводом](image/7.png){#fig:007 width=70%}

В данном случае число проходов цикла равна числу N.

## Обработка аргументов командной строки.

Создаем новый файл (рис. @fig:008).

![Создаем файл командой touch](image/8.png){#fig:008 width=70%}

Открываем файл в Midnight Commander и заполняем его в соответствии с листингом 8.2 (рис. @fig:009).

![Заполняем файл](image/9.png){#fig:009 width=70%}

Создаем исполняемый файл и проверяем его работу, указав аргументы (рис. @fig:010).

![Смотрим на работу программ](image/10.png){#fig:010 width=70%}

Програмой было обработано 3 аргумента.

Создаем новый файл lab8-3.asm (рис. @fig:011).

![Создаем файл командой touch](image/11.png){#fig:011 width=70%}

Открываем файл и заполняем его в соответствии с листингом 8.3 (рис. @fig:012).

![Заполняем файл](image/12.png){#fig:012 width=70%}

Создаём исполняемый файл и запускаем его, указав аргументы (рис. @fig:013).

![Смотрим на работу программы](image/13.png){#fig:013 width=70%}

Снова открываем файл для редактирования и изменяем его, чтобы вычислялось произведение вводимых значений (рис. @fig:014).

![Изменяем файл](image/14.png){#fig:014 width=70%}

Создаём исполняемый файл и запускаем его, указав аргументы (рис. @fig:015).

![Проверяем работу файла(работает правильно)](image/15.png){#fig:015 width=70%}

## Задание для самостоятельной работы

ВАРИАНТ-13

1. 
Создаем новый файл (рис. @fig:016).

![Создаем файл командой touch](image/16.png){#fig:016 width=70%}

Открываем его и пишем программу, которая выведет сумму значений, получившихся после решения выражения 12x-7 (рис. @fig:017).

![Пишем программу](image/17.png){#fig:017 width=70%}

Транслируем файл и смотрим на работу программы (рис. @fig:018).

![Смотрим на рабботу программы ](image/18.png){#fig:018 width=70%}

Транслируем файл и смотрим на работу программы (рис. @fig:019).

![Смотрим на рабботу программы ](image/19.png){#fig:019 width=70%}

# Выводы

Приобрели навыки написания программ с использованием циклов и обработкой аргументов командной строки.
