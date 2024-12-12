-module(lesson2_task04).
-export([len/1]).

len([]) -> 0;  % Якщо список порожній, то кількість елементів 0.
len([_ | Tail]) -> 1 + len(Tail).  % Для кожного елемента списку додаємо 1 і рекурсивно обробляємо решту списку.