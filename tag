#!/bin/bash

song=$1

echo "Artist:"
read artist
echo "Title:"
read title
echo "Album:"
read album
echo "Year:"
read year

echo "

Genre list:
04. Disco
07. Hip-hop
08. Jazz
13. Pop
14. R&B
16. Reggae
17. Rock
32. Classical
42. Soul
48. Ethnic
52. Electronic
80. Folk
86. Latin
"

echo "Genre(#):"
read genre

id3v2 -a "$artist" -t "$title" -A "$album" -y $year -g $genre "$song"
id3v2 -l "$song"
