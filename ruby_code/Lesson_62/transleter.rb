# encoding: utf-8
#
# Решение с использованием библиотеки cyrillizer. Перед использованием программы
# нужно установить библиотеку:
#
# gem install cyrillizer

# Подключаем библиотеку cyrillizer с помощью require
require 'cyrillizer'

# Перед работой надо настроить гем на русский язык
Cyrillizer.language = 'russian'

# Просим пользователя ввести фразу для транслитерации и сохраняем то, что ввел
# пользователь в переменную string. На случай, если он вводит русские символы,
# в Windows, сконвертируем все в кодировку UTF-8.
puts 'Введите фразу для транслитерации:'
string = gets.encode('UTF-8').chomp

# Транслитерируем в английский методом to_lat (в латинские символы) и сохраняем
# результат в переменную string_lat
string_lat = string.to_lat

if string == string_lat
  # Если string_lat совпадает с исходной строкой string, значит, введенная фраза
  # была на английском и выводим результат транслитерации в кирилицу.
  # выводим результат работы метода to_lat
  puts string.to_cyr
else
  # Иначе, вывоим транслитерированную эту фразу на английском
  puts string_lat
end