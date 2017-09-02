#!/usr/bin/env bash

if [ ! -f ~/.vimrc ]; then
  exit
fi

read -r -d '' TEXT << EOT
syntax on                                    " Added by Vimesthesia
function Vimesthesia()                       " Added by Vimesthesia
  silent set t_Co=256                        " Added by Vimesthesia
  silent set syntax=random                   " Added by Vimesthesia
endfunction                                  " Added by Vimesthesia
autocmd BufEnter * silent call Vimesthesia() " Added by Vimesthesia
EOT

VIMRC=`cat ~/.vimrc`

if [[ "$VIMRC" =~ "$TEXT" ]]; then
  sed -i '.orig' '/Added by Vimesthesia/d' ~/.vimrc
fi

if [ -f ~/.vim/syntax/vimesthesia.vim ]; then
  rm ~/.vim/syntax/vimesthesia.vim
fi
