-module(lesson2_task07).
-export([flatten/1]).

flatten([]) -> [];  % Якщо список порожній, повертаємо порожній список.
flatten([Head | Tail]) ->
    flatten(Head) ++ flatten(Tail).  % Якщо елемент є списком, рекурсивно його вирівнюємо і додаємо до решти списку.
flatten(Element) -> [Element].  % Якщо елемент не список, повертаємо його в список.
