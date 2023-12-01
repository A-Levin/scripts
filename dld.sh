#!/bin/bash

input_file="youtube.md"
download_dir="./downloads"

# Создаем каталог для скачанных видео, если его нет
mkdir -p "$download_dir"

# Задаем количество параллельных процессов
num_processes=5

# Читаем ссылки из файла и запускаем скачивание параллельно
xargs -n 1 -P "$num_processes" -a "$input_file" -I {} sh -c 'yt-dlp --format "bestvideo+bestaudio/best" --output "$0/%(title)s.%(ext)s" -- "$1"' "$download_dir" {}

