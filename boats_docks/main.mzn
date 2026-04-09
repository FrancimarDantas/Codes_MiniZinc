% Use this editor as a MiniZinc scratch book

enum docks ={dock1,dock2,dock3};

include "dados.dzn";

var docks: Boat1;
var docks: Boat2;
var docks: Boat3;
var docks: Boat4;
var docks: Boat5;

constraint Boat1 != dock1;
constraint Boat2 != dock1;

solve satisfy;