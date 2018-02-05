if exists("did_load_csvfiletype")
finish
endif
let did_load_csvfiletype=1

augroup filetypedetect
au! BufRead,BufNewFile *.csv,*.dat	setfiletype csv
au! BufRead,BufNewFile *.au3	setfiletype autoit
au! BufRead,BufNewFile *.ahk	setfiletype autohotkey
augroup END
