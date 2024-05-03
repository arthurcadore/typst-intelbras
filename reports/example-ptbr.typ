#import "../templates/support-ptbr.typ": *
#import "@preview/codelst:2.0.1": sourcecode

#show: doc => support(
  title: "Relatório de Teste de API Intelbras",
  subtitle: "Capacitação Suporte Técnico Redes",
  authors: "Arthur Cadore M. Barcella",
  date: "02 de Maio de 2023",
  doc,
)

= Objetivo

#lorem(10)

== Objetivo1
#lorem(40)

== Objetivo2
#lorem(40)

= Testes aplicados
#lorem(10)

#figure(
  figure(
    image("../pictures/example.png"),
    numbering: none,
    caption: [Descrição da imagem de exemplo]
  ),
  caption: figure.caption([Elaborada pelo Autor], position: top)
)

Código correspondente a imagem acima: 

#sourcecode[```matlab
close all; clear all; clc;

% Defining the font size for the plots.
set(0, 'DefaultAxesFontSize', 20);

% Defining the signals amplitude. 
A_modulating = 1; 
A_carrier = 1; 

% Defining the signals frequency
f_modulating = 10000;
f_carrier = 150000;

% modulator sensibility for frequency variation (Hz/volts)
k_f = 150000;

% Delta variable, correponding to max frequency variation.
d_f = k_f*A_modulating;

% Beta variable, correspondig to percentage of frequency variation about the frequency of the modulating. 
b = d_f/f_modulating;

% Defining the period and frequency of sampling: 
fs = 50*f_carrier;
Ts = 1/fs;
T = 1/f_modulating;

% Defining the sinal period. 
t_inicial = 0;
t_final = 2;

% "t" vector, correspondig to the time period of analysis, on time domain. 
t = [t_inicial:Ts:t_final];

% Defining carrier and modulating signals (for plot purpuses).
carrier_signal = A_carrier * cos(2*pi*f_carrier*t);
modulating_singal = A_modulating *cos(2*pi*f_modulating*t);

% Creating the FM modulated signal: 
phase_argument = 2*pi*k_f*cumsum(modulating_singal)*Ts;
modulated_signal = A_carrier * cos(2*pi*f_carrier*t + phase_argument);
```]

== Teste 1
#lorem(40)

== Teste 2 
#lorem(40)

= Resultados obtidos
#lorem(10)

== Resultado 1
#lorem(40)

== Resultado 2 
#lorem(40)

=== Seção 1 do resultado 2

=== Seção 2 do resultado 2 

= Conclusão

#lorem(40)

= Referências Bibliográficas:

Para o desenvolvimento deste relatório, foi utilizado os seguintes materiais de referência:

- #link("http://asdasdadsasdadasd.com")[Nome do link]

- #link("http://asdasdadsasdadasd.com")[Nome do link]

- #link("http://asdasdadsasdadasd.com")[Nome do link]

- #link("http://asdasdadsasdadasd.com")[Nome do link]