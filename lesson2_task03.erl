-module(lesson2_task03).
-export([element_at/2]).

element_at([X | _], 1) -> X;  % Якщо індекс 1, то повертаємо перший елемент.
element_at([_ | Tail], N) when N > 1 -> element_at(Tail, N - 1).  % Якщо індекс більше 1, рекурсивно шукаємо елемент.
