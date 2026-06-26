cd ~/GitHub/vim
git pull
cd src
sudo make distclean
LDFLAGS="-rdynamic" ./configure \
--enable-perlinterp \
--enable-python3interp \
--with-python3-config-dir=$(echo $HOME)/.anyenv/envs/pyenv/versions/3.13.14/lib/python3.13/config-3.13-x86_64-linux-gnu \
--enable-rubyinterp \
--with-ruby-command=$(echo $HOME)/.anyenv/envs/rbenv/shims/ruby \
--enable-luainterp \
--with-luajit
make
sudo make uninstall
sudo make install
