-module(lesson2_task14).
-export([duplicate/1]).

duplicate([]) -> [];  % Якщо список порожній, повертаємо порожній список.
duplicate([H | T]) -> [H, H | duplicate(T)].  % Для кожного елементу додаємо його два рази до результату.
