-module(lesson2_task08).
-export([compress/1]).

compress([]) -> [];  % Якщо список порожній, повертаємо порожній список.
compress([X]) -> [X];  % Якщо список містить лише один елемент, повертаємо його.
compress([X, X | Tail]) -> compress([X | Tail]);  % Якщо два перших елемента однакові, пропускаємо перший.
compress([X, Y | Tail]) -> [X | compress([Y | Tail])].  % Якщо елементи різні, додаємо X і продовжуємо.
