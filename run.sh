#!/bin/bash
### made by rayman@rhems-japan.co.jp

_tmp_dir=/root/tmp-dir
_tag_name=${TAG}
_imgname=${IMG}
_org_image=${_tmp_dir}/${_imgname}
_corner=corner.png
_cornername=${CRN}


## create tmp dir
mkdir -p ${_tmp_dir}

echo "## create corner"
convert -pointsize 15 -gravity East -font ./omaner.ttf ${_cornername} ${_corner}
#convert -pointsize 15 -gravity East -font ./omaner.ttf -annotate 48x45+7x25 "PRD" red-corner.png ${_corner}

echo "## annotare corner"
convert -fill white -annotate 48x45+7x25 "${_tag_name}" ${_cornername} ${_corner}

echo "## change org image to fit"
convert -resize 119x119! ${_org_image} ${_imgname}-fit.png

echo "## change to 128x128"
convert ${_imgname}-fit.png -gravity center -extent 128x128 ${_imgname}-resize.png

echo "## create frame(red #ff0000)"
convert ${_imgname}-resize.png -shave 3x3 -bordercolor "#ff0000" -border 3 ${_imgname}-frame.png

echo "## add corner"
convert ${_imgname}-frame.png ${_corner} -gravity  NorthEast -compose over -composite `echo ${_imgname} | cut -d '.' -f 1`-iconmaker.png

mv -i `echo ${_imgname} | cut -d '.' -f 1`-iconmaker.png ${_tmp_dir}
