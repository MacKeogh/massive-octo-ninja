source ~/.vim_local/gvimosconfig.vim
if has('win64') || has('win32')
"  set guifont=Source_Code_Pro_Semibold:h10:cDEFAULT
  set guifont=Lucida_Console:h10:cDEFAULT
else
  set guifont=Source\ Code\ Pro\ Semibold:h12:cDEFAULT
endif
set guioptions+=m
set guioptions -=T
