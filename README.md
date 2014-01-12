## cleanup

```
mkdir ~/tmp
mv ~/.vim    ~/tmp
mv ~/.vimrc  ~/tmp
mv ~/.gvimrc ~/tmp
```

## install
```
ln -s ~/.vim/.vimrc ~/.vimrc
git clone --recursive https://github.com/isbjorn/vimfiles.git ~/.vim
vim -c BundleInstall
# wait for minute, then :qa
```

## update
```
cd ~/.vim
git pull
```

## credits

Ideas from: https://github.com/gmarik
