---
## Front matter
title: "Отчёта по лабораторной работе №6"
subtitle: "Арифметические операции в NASM."
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

Освоение арифметических инструкций языка ассемблера NASM.



# Выполнение лабораторной работы

## 1.Cимвольные и численные данные в NASM

Создаем каталог для программ лабораторной работы № 6, переходим в него и создаем файл lab6-1.asm: (рис. @fig:001).

![Создаем каталог и файл, проверяем ](image/1.png){#fig:001 width=70%}

Введем в файл lab6-1.asm текст программы из листинга 6.1.(рис. @fig:002).

![Вводим программу](image/2.png){#fig:002 width=70%}

Создаем исполняемый файл и запускаем его (рис. @fig:003).

![Выводим результат](image/3.png){#fig:003 width=70%}

Далее изменим текст программы и вместо символов, запишем в регистры числа. Исправим текст программы ((рис. @fig:004).

![Изменяем файл](image/4.png){#fig:004 width=70%}

Создаем исполняемый файл и запускаем его (рис. @fig:005).

![Выводим результат](image/5.png){#fig:005 width=70%}

Создаем файл lab6-2.asm в каталоге ~/work/arch-pc/lab06(рис. @fig:006).

![Создаем файл lab6-2.asm](image/6.png){#fig:006 width=70%}

Введим в него текст программы из листинга 6.2. (рис. @fig:007).

![Вводим текст в файл](image/7.png){#fig:007 width=70%}

Создаем исполняемый файл и запускаем его (рис. @fig:008).

![Смотрим на работу программы](image/8.png){#fig:008 width=70%}

Аналогично предыдущему примеру изменим символы на числа. (рис. @fig:009).

![Изменяем файл](image/9.png){#fig:009 width=70%}

Создаем исполняемый файл и запускаем его (рис. @fig:010).

![Смотрим на работу программы](image/10.png){#fig:010 width=70%}

В результате программы получаем число 10

Заменим функцию iprintLF на iprint.(рис. @fig:011).

![Изменяем файл](image/11.png){#fig:011 width=70%}

Создаем исполняемый файл и запускаем его (рис. @fig:012).

![Смотрим на работу программы](image/12.png){#fig:012 width=70%}

Вывод функций iprintLF и iprint отличаются тем, что iprintLF делает перенос на новую строку.

## 2.Выполнение арифметических операций в NASM

Создайте файл lab6-3.asm в каталоге ~/work/arch-pc/lab06 (рис. @fig:013).

![Создаем файл и проверяем](image/13.png){#fig:013 width=70%}

Внимательно изучим текст программы из листинга 6.3 и введем в lab6-3.asm.(рис. @fig:014).

![Вводим программу](image/14.png){#fig:014 width=70%}

Создаем исполняемый файл и запускаем его (рис. @fig:015).

![Смотрим на результат работы программы](image/15.png){#fig:015 width=70%}

Изменим текст программы для вычисления выражения f(x) = (4*6+2)/5 (рис. @fig:016).

![Изменяем файл](image/16.png){#fig:016 width=70%}

Создадим исполняемый файл и проверим его работу. (рис. @fig:017).

![Смотрим на результат работы программы](image/17.png){#fig:017 width=70%}

Создадим файл variant.asm в каталоге ~/work/arch-pc/lab06 (рис. @fig:018).

![Создаем файл](image/18.png){#fig:018 width=70%}

Внимательно изучим текст программы из листинга 6.4 и введем в файл variant.asm.(рис. @fig:019).

![Вводим програму](image/19.png){#fig:019 width=70%}

Создадим исполняемый файл и запустим его. (рис. @fig:020).

![Проверим результат работы программы](image/20.png){#fig:020 width=70%}

1. Какие строки листинга 6.4 отвечают за вывод на экран сообщения ‘Ваш вариант:’?
Строки "mov eax,rem", "call sprint" 

2. Для чего используется следующие инструкции?
mov ecx, x
mov edx, 80
call sread

Эти инструкции вместе подготавливают необходимые параметры для вызова функции sread, которая затем считывает строку, введенную пользователем, и сохраняет ее в переменной x.

3. Для чего используется инструкция “call atoi”?
call atoi используется для преобразования строки, введенной пользователем, в целое число

4. Какие строки листинга 6.4 отвечают за вычисления варианта?
Строка "xor edx,edx" обнуляет регистр edx перед выполнением деления. 
Строка "mov ebx,20" загружает значение 20 в регистр ebx. Строка "div ebx" выполняет деление регистра eax на значение регистра ebx с сохранением частного в регистре eax и остатка в регистре edx.

5. В какой регистр записывается остаток от деления при выполнении инструкции “div ebx”?
В регистр edx.

6. Для чего используется инструкция “inc edx”?
Для увеличения значения в регистре edx на 1. В нашем коде она увеличивает остаток от деления на 1

7. Какие строки листинга 6.4 отвечают за вывод на экран результата вычислений?
Строка "mov eax,edx" передает значение остатка от деления в регистр eax. Строка "call iprintLF" вызывает процедуру iprintLF для вывода значения на экран вместе с переводом строки.

## Задание для самостоятельной работы

Создаем файл samostoyatelnaya.asm Открываем его и пишем программу для решения выражения f(x) = (8x+6)*10 (рис. @fig:021 @fig:022)

![Пишем программу](image/21.png){#fig:021 width=70%}

![Пишем программу](image/22.png){#fig:022 width=70%}

Компилируем программу и проверяем работу(рис. @fig:023).

![Проверяем работу программы](image/23.png){#fig:023 width=70%}


# Выводы

Освоили арифметические инструкции языка ассемблера NASM.
