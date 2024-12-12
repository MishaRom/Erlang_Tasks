-module(lesson2_task13).
-export([decode/1]).

decode([]) -> [];  % Якщо список порожній, повертаємо порожній список.
decode([{Count, X} | Tail]) -> lists:append(lists:duplicate(Count, X), decode(Tail));  % Якщо елемент - кортеж {Count, X}, повторюємо X Count разів.
