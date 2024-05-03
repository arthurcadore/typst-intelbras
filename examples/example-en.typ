#import "../templates/support-en.typ": *
#import "@preview/codelst:2.0.1": sourcecode
#show heading: set block(below: 1.5em)
#show par: set block(spacing: 1.5em)


#show: doc => support(
  title: "API Test Report Intelbras",
  subtitle: "Network Technician Support Analyst",
  authors: "Arthur Cadore M. Barcella",
  date: "May, 02, 2023",
  doc,
)

= Objective

#lorem(10)

== Objective1
#lorem(40)

== Objective
#lorem(40)

= Applied Tests
#lorem(10)

#figure(
  figure(
    image("../pictures/example.png"),
    numbering: none,
    caption: [Image Description]
  ),
  caption: figure.caption([Image Created by The Author], position: top)
)

Code block with syntax highlighting:

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

== Test 1
#lorem(40)

== Test 2 
#lorem(40)

= Results
#lorem(10)

== Result 1
#lorem(40)

== Result 2 
#lorem(40)

=== Description 1 of Result 2

=== Description 1 of Result 2 

= Conclusion

#lorem(40)

= References

For this article, the folloaswing references were used:

- #link("http://asdasdadsasdadasd.com")[Nome do link]

- #link("http://asdasdadsasdadasd.com")[Nome do link]

- #link("http://asdasdadsasdadasd.com")[Nome do link]

- #link("http://asdasdadsasdadasd.com")[Nome do link]