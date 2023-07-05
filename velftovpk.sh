#!/bin/bash

echo 'Packing...'
vita-make-fself $1 ./eboot.bin
vita-mksfoex -s TITLE_ID=$2 "$1" param.sfo
mkdir sce_sys
mv param.sfo ./sce_sys/param.sfo
zip -r $1.vpk eboot.bin ./sce_sys
echo 'Done packing. Maybe add a template and images later?'
read -n1 -r -p "Yeah maybe... [Press any key]"
