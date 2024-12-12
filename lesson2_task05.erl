-module(lesson2_task05).
-export([reverse/1]).

reverse(List) -> reverse(List, []).

reverse([], Acc) -> Acc;  % Коли список порожній, повертаємо акумульований результат.
reverse([H | T], Acc) -> reverse(T, [H | Acc]).  % Рекурсивно додаємо елемент до акумулятора.
