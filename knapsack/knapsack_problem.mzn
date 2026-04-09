% Use this editor as a MiniZinc scratch book

int: n;                  % número de itens
set of int: ITENS = 1..n;

array[ITENS] of int: w;  % pesos
array[ITENS] of int: v;  % valores

int: W;                  % capacidade da mochila

array[ITENS] of var 0..1: x;  % 1 se item é escolhido

% Restrição de peso
constraint sum(i in ITENS)(w[i] * x[i]) <= W;

% Função objetivo
solve maximize sum(i in ITENS)(v[i] * x[i]);