cd ~/GitHub/neovim
git pull
sudo rm -rf build/ .deps/
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX:PATH=/usr/local -DCMAKE_BUILD_TYPE=Release"
sudo rm -rf /usr/local/bin/nvim
sudo make install
cd ~/.file/lua
cp ./*.lua ~/GitHub/neovim/.deps/usr/share/luajit-2.1

