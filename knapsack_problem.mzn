% Use this editor as a MiniZinc scratch book

int: n;                  % número de itens
set of int: ITEMS = 1..n;

array[ITEMS] of int: w;  % pesos
array[ITEMS] of int: v;  % valores

int: W;                  % capacidade da mochila

array[ITEMS] of var 0..1: x;  % 1 se item é escolhido

% Restrição de peso
constraint sum(i in ITEMS)(w[i] * x[i]) <= W;

% Função objetivo
solve maximize sum(i in ITEMS)(v[i] * x[i]);