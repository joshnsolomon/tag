#!/bin/bash

song=$1
if [ -e "$song" ]; then
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
    02. Country
    04. Disco
    07. Hip-hop
    08. Jazz
    13. Pop
    14. R&B
    16. Reggae
    17. Rock
    24. Soundtrack
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
else
    echo "File does not exist"
fi
