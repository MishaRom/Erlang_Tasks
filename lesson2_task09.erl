-module(lesson2_task09).
-export([pack/1]).

pack([]) -> [];  % Якщо список порожній, повертаємо порожній список.
pack([X]) -> [[X]];  % Якщо в списку один елемент, пакуємо його в окремий список.
pack([X, X | Tail]) ->  % Якщо перші два елементи однакові, групуємо їх.
    [ [X | group] | rest ] = pack([X | Tail]),
    [[X] | group] ++ rest;
pack([X, Y | Tail]) -> [[X] | pack([Y | Tail])].  % Якщо елементи різні, додаємо X як окремий елемент.
