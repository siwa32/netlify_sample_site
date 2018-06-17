#!/usr/bin/env bash

###
### netlify用ビルドコマンド
### デプロイ設定の`Build command`に設定する
###

IMGDIR="./public/images"
IMGOUTDIR="./static/images"

uname -a
echo $LANG
#echo $HOME
#ls -al $HOME

# add current directory in PATH
echo 'export PATH=./:${PATH}'
export PATH=./:${PATH}

# remove diagram images
echo "rm -f ${IMGOUTDIR}/diag-*.*"
rm -f ${IMGOUTDIR}/diag-*.*

# font
test -d ${HOME}/.fonts || mkdir ${HOME}/.fonts
cp ./fonts/* ${HOME}/.fonts/
ls -l ${HOME}/.fonts/
fc-cache -f -v

# build
hugo -v

# copy generated diagram images to `public/images/`
test -d ${IMGDIR} || mkdir ${IMGDIR}
rsync -av --delete ${IMGOUTDIR}/diag-*.* ${IMGDIR}/

# confirm directory
# ls -l
# ls -l ./public
# ls -l ./static/images
# ls -l ./public/images
