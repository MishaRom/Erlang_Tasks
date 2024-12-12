-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified([]) -> [];  % Якщо список порожній, повертаємо порожній список.
decode_modified([{Count, X} | Tail]) -> lists:append(lists:duplicate(Count, X), decode_modified(Tail));  % Якщо елемент - кортеж {Count, X}, повторюємо X Count разів.
decode_modified([X | Tail]) -> [X | decode_modified(Tail)].  % Якщо елемент одиничний (не кортеж), додаємо його до результату.
