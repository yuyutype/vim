# require above vim8
```
$ git clone https://github.com/yuyutype/vim.git .vim
$ cd .vim
$ sh ./setup.sh
```

# install vim8 for centos7
```
yum install https://centos7.iuscommunity.org/ius-release.rpm
yum install python36u python36u-devel python36u-libs python36u-pip
yum install python python-devel lua lua-devel ruby ruby-devel ncurses ncurses-devel
pip3 install neovim
cd /usr/local/src
git clone https://github.com/vim/vim.git
cd vim
./configure \
 --enable-fail-if-missing \
 --with-features=huge \
 --disable-selinux \
 --enable-luainterp \
 --enable-perlinterp \
 --enable-pythoninterp=dynamic \
 --with-python-config-dir=/usr/lib64/python2.7/config \
 --enable-rubyinterp=dynamic \
 --with-ruby-command=/usr/bin/ruby \
 --enable-cscope \
 --enable-fontset \
 --enable-multibyte \
 --enable-python3interp=dynamic \
 --with-python3-config-dir=/usr/lib64/python3.6/config-3.6m-x86_64-linux-gnu \
 vi_cv_path_python3=/usr/bin/python3.6
make
make install
```

よく使うコマンド操作

|コマンド|動作|
| --- | --- |
|[space]v|ファイル一覧表示|
|;g|grep検索|
|ss|ファイルオープン履歴|
|ctrl + ]|タグジャンプ|
|ctrl + o|一つ前の場所に戻る|
|ctrl + i|一つ前の場所に進む|

ファイル一覧操作

|コマンド|動作|
| --- | --- |
|o|ファイルを開く|
|v|ファイルを垂直分割で開く|
|s|ファイルを水平分割で開く|
|q|ファイルを閉じる|
|tab|分割窓の移動|

