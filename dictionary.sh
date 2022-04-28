#!/bin/bash -x

declare -A sounds
sounds[Dog]="Bark"
sounds[Cow]="Moo"
sounds[Bird]="Tweet"
sounds[Wolf]="howl"

echo "Dog Sound " ${sounds[Dog]}
echo "All animal Sounds " ${sounds[@]}
echo "Animals " ${!sounds[@]}
echo "Number of animals " ${#sounds[@]}