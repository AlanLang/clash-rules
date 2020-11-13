#!/bin/sh
git pull
if [ ! -d Rules ]; then
    echo "正在克隆Rules"
    git clone https://github.com/lhie1/Rules.git
    git checkout master
else
    cd Rules
    echo "正在同步Rules"
    git pull
    cd ..
fi
cp -r Rules/Surge/Surge\ 3/Provider/. Provider
if [ -n "$(git status -s)" ];then
    echo "规则发生修改，正在同步"
    git config --global user.name "alan"
    git config --global user.email "langwdalan@gmail.com" 
    git add . 
    git commit -m 'async rules'  
    git push -u origin master
    echo "完成同步"
else
    echo "规则未发生修改"
fi
exit 0