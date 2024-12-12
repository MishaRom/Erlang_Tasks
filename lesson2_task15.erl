-module(lesson2_task15).
-export([replicate/2]).

replicate([], _) -> [];  % Якщо список порожній, повертаємо порожній список.
replicate([H | T], N) -> lists:duplicate(N, H) ++ replicate(T, N).  % Реплікуємо елемент H N разів і продовжуємо для решти списку.
