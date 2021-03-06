" Vim syntax file

" Language:	AutoIt from www.hiddensoft.com
" Maintainer:	Riccardo Casini <ric@libero.it>
" Last Change:	20apr04 - by ric

" HOWTO USE IT (INSTALL):
" 1) copy the file in the current vim syntax folder
" 2) add following line in your filetype.vim file, in the correct position,
"    to recognize .au3 files by extension:
"	au BufNewFile, BufRead *.au3 setf autoit

" used inside floating points
se iskeyword+=.
se iskeyword+=+

" Force definition of command HiLink, to assimilate from_group to to_group
" highlighting, only when an item doesn't have highlighting yet
com! -nargs=+ HiLink hi def link <args>

" AutoIt is not case dependent
sy case ignore

" Definitions for AutoIt reserved keywords
sy keyword au3Keyword dim global local
sy keyword au3Keyword if else elseif then endif
sy keyword au3Keyword select case endselect
sy keyword au3Keyword for to step next
sy keyword au3Keyword while wend
sy keyword au3Keyword do until
sy keyword au3Keyword continueloop exitloop
sy keyword au3Keyword exit

" inside script inclusion
sy match au3Included display contained "<[^>]*>"
sy match au3Include	display "^\s*#\s*include\>\s*["<]"
	\ contains=au3Included,au3String
sy match au3Include "^\s*#include-once\>"

" user-defined functions
sy keyword au3Keyword func byref endfunc return

" built-in functions
sy keyword au3Function abs exp log mod random round sqrt
sy keyword au3Function acos asin atan cos sin tan
sy keyword au3Function adlibdisable adlibenable
sy keyword au3Function asc chr dec hex int string
sy keyword au3Function autoitsetoption
sy keyword au3Function autoitwingettitle
sy keyword au3Function bitand bitnot bitor bitshift bitxor
sy keyword au3Function blockinput break
sy keyword au3Function call
sy keyword au3Function cdtray
sy keyword au3Function clipget clipput
sy keyword au3Function controlclick controlcommand controldisable controlenable
	\ controlfocus controlgetfocus controlgetpos controlgettext controlhide
	\ controlmove controlsend controlsettext controlshow
sy keyword au3Function dircopy dircreate dirmove dirremove
sy keyword au3Function drivegetdrive drivegetfilesystem drivegetlabel
	\ drivegetserial drivegettype drivesetlabel drivespacefree drivespacetotal
	\ drivestatus
sy keyword au3Function envget envset envupdate
sy keyword au3Function eval number
sy keyword au3Function filechangedir fileclose filecopy filecreateshortcut
	\ filedelete fileexists filefindfirstfile filefindnextfile filegetattrib
	\ filegetlongname filegetshortname filegetsize filegettime filegetversion
	\ fileinstall filemove fileopen fileopendialog fileread filereadline
	\ filerecycle filerecycleempty filesavedialog fileselectfolder filesetattrib
	\ filesettime filewrite filewriteline
sy keyword au3Function guicreate guicreateex guidefaultfont guidelete guihide
	\ guimsg guiread guisetcontrol guisetcontroldata guisetcontrolex
	\ guisetcontrolfont guisetcontrolnotify guisetcoord guishow guiwaitclose
	\ guiwrite
sy keyword au3Function hotkeyset
sy keyword au3Function inidelete iniread iniwrite
sy keyword au3Function inputbox msgbox
sy keyword au3Function isadmin
sy keyword au3Function isarray isdeclared isfloat isint isnumber isstring
sy keyword au3Function memgetstats
sy keyword au3Function mouseclick mouseclickdrag mousedown mousegetcursor
	\ mousegetpos mousemove mouseup mousewheel
sy keyword au3Function pixelgetcolor pixelsearch
sy keyword au3Function processclose processexists processwait processwaitclose
sy keyword au3Function progressoff progresson progressset
sy keyword au3Function regdelete regenumkey regenumval regread regwrite
sy keyword au3Function run runasset runwait
sy keyword au3Function send
sy keyword au3Function seterror
sy keyword au3Function shutdown
sy keyword au3Function sleep
sy keyword au3Function soundplay soundsetwavevolume
sy keyword au3Function splashimageon splashoff splashtexton
sy keyword au3Function statusbargettext
sy keyword au3Function stringaddcr stringformat stringinstr stringisalnum
	\ stringisalpha stringisascii stringisdigit stringisfloat stringisint
	\ stringislower stringisspace stringisupper stringisxdigit stringleft
	\ stringlen stringlower stringmid stringreplace stringright stringsplit
	\ stringstripcr stringstripws stringtrimleft stringtrimright stringupper
sy keyword au3Function timerstart timerstop
sy keyword au3Function tooltip traytip
sy keyword au3Function ubound
sy keyword au3Function urldownloadtofile
sy keyword au3Function winactivate winactive winclose winexists wingetcaretpos
	\ wingetclasslist wingetclientsize wingethandle wingetpos wingetstate
	\ wingettext wingettitle winkill winmenuselectitem winminimizeall
	\ winminimizeallundo winmove winsetontop winsetstate winsettitle winwait
	\ winwaitactive winwaitclose winwaitnotactive

" read-only macros
sy match au3Builtin "@AppData\(Common\)\=Dir"
sy match au3Builtin "@AutoItVersion"
sy match au3Builtin "@CommonFilesDir"
sy match au3Builtin "@Compiled"
sy match au3Builtin "@ComputerName"
sy match au3Builtin "@ComSpec"
sy match au3Builtin "@CR\(LF\)\="
sy match au3Builtin "@Desktop\(Common\)\=Dir"
sy match au3Builtin "@DesktopHeight"
sy match au3Builtin "@DesktopWidth"
sy match au3Builtin "@DocumentsCommonDir"
sy match au3Builtin "@Error"
sy match au3Builtin "@Favorites\(Common\)\=Dir"
sy match au3Builtin "@HomeDrive"
sy match au3Builtin "@HomePath"
sy match au3Builtin "@HomeShare"
sy match au3Builtin "@HOUR"
sy match au3Builtin "@IPAddress[1234]"
sy match au3Builtin "@LF"
sy match au3Builtin "@Logon\(DNS\)\=Domain"
sy match au3Builtin "@LogonServer"
sy match au3Builtin "@MDAY"
sy match au3Builtin "@MIN"
sy match au3Builtin "@MON"
sy match au3Builtin "@MyDocumentsDir"
sy match au3Builtin "@OSBuild"
sy match au3Builtin "@OSLang"
sy match au3Builtin "@OSServicePack"
sy match au3Builtin "@OSTYPE"
sy match au3Builtin "@OSVersion"
sy match au3Builtin "@ProgramFilesDir"
sy match au3Builtin "@Programs\(Common\)\=Dir"
sy match au3Builtin "@ScriptDir"
sy match au3Builtin "@ScriptFullPath"
sy match au3Builtin "@ScriptName"
sy match au3Builtin "@SEC"
sy match au3Builtin "@StartMenu\(Common\)\=Dir"
sy match au3Builtin "@Startup\(Common\)\=Dir"
sy match au3Builtin "@SW_HIDE" "alias for 0
sy match au3Builtin "@SW_MAXIMIZE" "alias for 3
sy match au3Builtin "@SW_MINIMIZE" "alias for 6
sy match au3Builtin "@SW_RESTORE" "alias for 9
sy match au3Builtin "@SW_SHOW" "alias for 5
sy match au3Builtin "@SystemDir"
sy match au3Builtin "@TAB"
sy match au3Builtin "@TempDir"
sy match au3Builtin "@UserProfileDir"
sy match au3Builtin "@UserName"
sy match au3Builtin "@WDAY"
sy match au3Builtin "@WindowsDir"
sy match au3Builtin "@WorkingDir"
sy match au3Builtin "@YDAY"
sy match au3Builtin "@YEAR"

"comments and commenting-out
sy match au3Comment ";.*"
"in this way also #ce alone will be highlighted
sy match au3CommDelimiter "^\s*#comments-start\>"
sy match au3CommDelimiter "^\s*#cs\>"
sy match au3CommDelimiter "^\s*#comments-end\>"
sy match au3CommDelimiter "^\s*#ce\>"
sy region au3Comment
	\ matchgroup=au3CommDelimiter
	\ start="^\s*#comments-start\>" start="^\s*#cs\>"
	\ end="^\s*#comments-end\>" end="^\s*#ce\>"

"one character operators
sy match au3Operator "[-+*/&^=<>][^-+*/&^=<>]"me=e-1 
"two characters operators
sy match au3Operator "==[^=]"me=e-1
sy match au3Operator "<>"
sy match au3Operator "<="
sy match au3Operator ">="
sy keyword au3Operator NOT AND OR

sy match au3Paren "(\|)"
sy match au3Bracket "\[\|\]"
sy match au3Comma ","

"numbers must come after operator '-'
"decimal numbers without a dot
sy match au3Number "-\=\<\d\+\>"
"hexadecimal numbers without a dot
sy match au3Number "-\=\<0x\x\+\>"
"floating point number with dot (inside or at end)
sy match au3Number "-\=\<\d\+\.\d*\>"
"floating point number, starting with a dot
sy match au3Number "-\=\<\.\d\+\>"
"scientific notation numbers without dots
sy match au3Number "-\=\<\d\+e[-+]\=\d\+\>"
"scientific notation numbers with dots
sy match au3Number "-\=\<\(\(\d\+\.\d*\)\|\(\.\d\+\)\)\(e[-+]\=\d\+\)\=\>"

"string constants
"we want the escaped quotes marked in red
sy match au3DoubledSingles +''+ contained
sy match au3DoubledDoubles +""+ contained
"we want the continuation character marked in red
"(also at the top level, not just contained)
sy match au3Cont "_$"
"this was tricky!
"we use an oneline region, instead of a match, in order to use skip=
"matchgroup= so start and end quotes are not considered as au3Doubled
"contained
sy region au3String oneline matchgroup=au3Quote start=+"+
	\ end=+"+ end=+_\n\{1}.*"+
	\ contains=au3Cont,au3DoubledDoubles skip=+""+
sy region au3String oneline matchgroup=au3Quote start=+'+
	\ end=+'+ end=+_\n\{1}.*'+
	\ contains=au3Cont,au3DoubledSingles skip=+''+

sy match au3Variable "\$[a-z0-9_]\+"

" Define the default highlighting.
" Unused colors: Underlined, Ignore, Error, Todo
  HiLink au3Function Statement  " yellow
  HiLink au3Keyword Statement
  HiLink au3Operator Statement
  HiLink au3Comment	Comment  " cyan (same as Identifier)
  HiLink au3Paren Comment
  HiLink au3Comma Comment
  HiLink au3Bracket Comment
  HiLink au3Number Constant " magenta
  HiLink au3String Constant
  HiLink au3Quote Constant
  HiLink au3Included Constant
  HiLink au3Cont Special  " red
  HiLink au3DoubledSingles Special
  HiLink au3DoubledDoubles Special
  HiLink au3CommDelimiter PreProc  " blue
  HiLink au3Include PreProc
  HiLink au3Variable Type  " green
  HiLink au3Builtin Type

  delcommand HiLink
  sy sync fromstart
