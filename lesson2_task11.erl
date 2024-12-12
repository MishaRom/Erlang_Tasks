-module(lesson2_task11).
-export([encode_modified/1]).

encode_modified([]) -> [];  % Якщо список порожній, повертаємо порожній список.
encode_modified([X]) -> [X];  % Якщо список містить один елемент, повертаємо його без кількості.
encode_modified([X, X | Tail]) ->  % Якщо два перших елемента однакові, рахуємо їх.
    [{Count, X} | Rest] = encode_modified([X | Tail]),
    [{Count + 1, X} | Rest];  % Збільшуємо лічильник і продовжуємо.
encode_modified([X, Y | Tail]) ->  % Якщо елементи різні, записуємо X без кількості і продовжуємо.
    [X | encode_modified([Y | Tail])].
