let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <Nul> <C-Space>
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
imap <silent> <Plug>StopMarkdownPreview :if exists(':MarkdownPreviewStop') | exec 'MarkdownPreviewStop ' | endifa
inoremap <silent> <Plug>(ale_complete) :ALEComplete
inoremap <C-Q> dd
inoremap <C-F> W
inoremap <C-D> <Del>
inoremap <C-A> ^
inoremap <C-E> $
inoremap <C-L> <Right>
inoremap <C-H> <Left>
inoremap <C-K> <Up>
inoremap <C-J> <Down>
inoremap <C-U> u
snoremap  dd
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nmap Q gq
xmap Q gq
omap Q gq
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap \d :YcmShowDetailedDiagnostic
nnoremap \w{ diwi{}P
nnoremap \w[ diwi[]P
nnoremap \w( diwi()P
nnoremap \w< diwi<>P
nnoremap \w" diwi""P
nnoremap \w' diwi''P
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
omap ae <Plug>(textobj-entire-a)
xmap ae <Plug>(textobj-entire-a)
map g: <Plug>(PythonsensePyWhere)
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
omap ie <Plug>(textobj-entire-i)
xmap ie <Plug>(textobj-entire-i)
nnoremap <silent> <Plug>(YCMFindSymbolInDocument) :call youcompleteme#finder#FindSymbol( 'document' )
nnoremap <silent> <Plug>(YCMFindSymbolInWorkspace) :call youcompleteme#finder#FindSymbol( 'workspace' )
nnoremap <silent> <Plug>(YCMCallHierarchy) <Cmd>call youcompleteme#hierarchy#StartRequest( 'call' )
nnoremap <silent> <Plug>(YCMTypeHierarchy) <Cmd>call youcompleteme#hierarchy#StartRequest( 'type' )
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
map <silent> <Plug>StopMarkdownPreview :if exists(':MarkdownPreviewStop') | exec 'MarkdownPreviewStop ' | endif
nnoremap <silent> <Plug>GitGutterPreviewHunk :call gitgutter#utility#warn('Please change your map <Plug>GitGutterPreviewHunk to <Plug>(GitGutterPreviewHunk)')
nnoremap <silent> <Plug>(GitGutterPreviewHunk) :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :call gitgutter#utility#warn('Please change your map <Plug>GitGutterUndoHunk to <Plug>(GitGutterUndoHunk)')
nnoremap <silent> <Plug>(GitGutterUndoHunk) :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('Please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
nnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
xnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('Please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
xnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\call gitgutter#utility#warn('Please change your map \<Plug>GitGutterPrevHunk to \<Plug>(GitGutterPrevHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterPrevHunk) &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\call gitgutter#utility#warn('Please change your map \<Plug>GitGutterNextHunk to \<Plug>(GitGutterNextHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterNextHunk) &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>(GitGutterTextObjectOuterVisual) :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>(GitGutterTextObjectInnerVisual) :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>(GitGutterTextObjectOuterPending) :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>(GitGutterTextObjectInnerPending) :call gitgutter#hunk#text_object(1)
nnoremap <silent> <Plug>(ale_info_preview) :ALEInfo -preview
nnoremap <silent> <Plug>(ale_info_clipboard) :ALEInfo -clipboard
nnoremap <silent> <Plug>(ale_info_echo) :ALEInfo -echo
nnoremap <silent> <Plug>(ale_info) :ALEInfo
nnoremap <silent> <Plug>(ale_repeat_selection) :ALERepeatSelection
nnoremap <silent> <Plug>(ale_code_action) :ALECodeAction
nnoremap <silent> <Plug>(ale_filerename) :ALEFileRename
nnoremap <silent> <Plug>(ale_rename) :ALERename
nnoremap <silent> <Plug>(ale_import) :ALEImport
nnoremap <silent> <Plug>(ale_documentation) :ALEDocumentation
nnoremap <silent> <Plug>(ale_hover) :ALEHover
nnoremap <silent> <Plug>(ale_find_references) :ALEFindReferences
nnoremap <silent> <Plug>(ale_go_to_implementation_in_vsplit) :ALEGoToImplementation -vsplit
nnoremap <silent> <Plug>(ale_go_to_implementation_in_split) :ALEGoToImplementation -split
nnoremap <silent> <Plug>(ale_go_to_implementation_in_tab) :ALEGoToImplementation -tab
nnoremap <silent> <Plug>(ale_go_to_implementation) :ALEGoToImplementation
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_vsplit) :ALEGoToTypeDefinition -vsplit
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_split) :ALEGoToTypeDefinition -split
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_tab) :ALEGoToTypeDefinition -tab
nnoremap <silent> <Plug>(ale_go_to_type_definition) :ALEGoToTypeDefinition
nnoremap <silent> <Plug>(ale_go_to_definition_in_vsplit) :ALEGoToDefinition -vsplit
nnoremap <silent> <Plug>(ale_go_to_definition_in_split) :ALEGoToDefinition -split
nnoremap <silent> <Plug>(ale_go_to_definition_in_tab) :ALEGoToDefinition -tab
nnoremap <silent> <Plug>(ale_go_to_definition) :ALEGoToDefinition
nnoremap <silent> <Plug>(ale_fix) :ALEFix
nnoremap <silent> <Plug>(ale_detail) :ALEDetail
nnoremap <silent> <Plug>(ale_lint) :ALELint
nnoremap <silent> <Plug>(ale_reset_buffer) :ALEResetBuffer
nnoremap <silent> <Plug>(ale_disable_buffer) :ALEDisableBuffer
nnoremap <silent> <Plug>(ale_enable_buffer) :ALEEnableBuffer
nnoremap <silent> <Plug>(ale_toggle_buffer) :ALEToggleBuffer
nnoremap <silent> <Plug>(ale_reset) :ALEReset
nnoremap <silent> <Plug>(ale_disable) :ALEDisable
nnoremap <silent> <Plug>(ale_enable) :ALEEnable
nnoremap <silent> <Plug>(ale_toggle) :ALEToggle
nnoremap <silent> <Plug>(ale_last) :ALELast
nnoremap <silent> <Plug>(ale_first) :ALEFirst
nnoremap <silent> <Plug>(ale_next_wrap_warning) :ALENext -wrap -warning
nnoremap <silent> <Plug>(ale_next_warning) :ALENext -warning
nnoremap <silent> <Plug>(ale_next_wrap_error) :ALENext -wrap -error
nnoremap <silent> <Plug>(ale_next_error) :ALENext -error
nnoremap <silent> <Plug>(ale_next_wrap) :ALENextWrap
nnoremap <silent> <Plug>(ale_next) :ALENext
nnoremap <silent> <Plug>(ale_previous_wrap_warning) :ALEPrevious -wrap -warning
nnoremap <silent> <Plug>(ale_previous_warning) :ALEPrevious -warning
nnoremap <silent> <Plug>(ale_previous_wrap_error) :ALEPrevious -wrap -error
nnoremap <silent> <Plug>(ale_previous_error) :ALEPrevious -error
nnoremap <silent> <Plug>(ale_previous_wrap) :ALEPreviousWrap
nnoremap <silent> <Plug>(ale_previous) :ALEPrevious
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
nnoremap <F9> :NERDTreeToggle
nnoremap <F8> :TagbarToggle
nnoremap <F7> :q!
nnoremap <F6> :wq
nnoremap <F5> :call CompileRunGcc()
snoremap <C-Q> dd
inoremap  ^
inoremap  <Del>
inoremap  $
inoremap  W
inoremap  <Left>
inoremap <expr> 	 pumvisible() ? "\" : "\	"
inoremap <NL> <Down>
inoremap  <Up>
inoremap  <Right>
inoremap  dd
inoremap  u
inoremap jk 
inoremap kj 
inoremap nama if __name__ == '__main__':
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set backup
set completeopt=preview,menuone
set cpoptions=aAceFsB
set display=truncate
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=200
set hlsearch
set incsearch
set langnoremap
set nolangremap
set laststatus=2
set nomodeline
set nrformats=bin,hex
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/plugged/gruvbox,~/.vim/plugged/vim-commentary,~/.vim/plugged/indentLine,~/.vim/plugged/rainbow,~/.vim/plugged/vim-rainbow-trails,~/.vim/plugged/ale,~/.vim/plugged/ack.vim,~/.vim/plugged/vim-textobj-user,~/.vim/plugged/vim-textobj-entire,~/.vim/plugged/vim-textobj-multiline-str,~/.vim/plugged/vim-pythonsense,~/.vim/plugged/YouCompleteMe,~/.vim/plugged/nerdtree,~/.vim/plugged/vim-nerdtree-tabs,~/.vim/plugged/nerdtree-git-plugin,~/.vim/plugged/tagbar,~/.vim/plugged/vim-airline,~/.vim/plugged/vim-easy-align,~/.vim/plugged/vim-gitgutter,~/.vim/plugged/mathjax-support-for-mkdp,~/.vim/plugged/markdown-preview.vim,/var/lib/vim/addons,/etc/vim,/usr/share/vim/vimfiles,/usr/share/vim/vim91,/usr/share/vim/vim91/pack/dist/opt/matchit,/usr/share/vim/vimfiles/after,/etc/vim/after,/var/lib/vim/addons/after,~/.vim/plugged/indentLine/after,~/.vim/plugged/vim-pythonsense/after,~/.vim/plugged/nerdtree-git-plugin/after,~/.vim/after
set scrolloff=5
set shiftwidth=4
set shortmess=filnxtToOSc
set showcmd
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set ttimeout
set ttimeoutlen=100
set undofile
set viminfo='1000,f1,<500
set wildignore=*.pyc
set wildmenu
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Program/Interpreter
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +0 c_interpreter.py
badd +5 test.c
badd +0 Archived/calc.py
argglobal
%argdel
$argadd c_interpreter.py
edit c_interpreter.py
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 84 + 84) / 169)
exe '2resize ' . ((&lines * 33 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 84 + 84) / 169)
exe '3resize ' . ((&lines * 5 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 84 + 84) / 169)
argglobal
balt test.c
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> [c <Plug>(GitGutterPrevHunk)
map <buffer> [M <Plug>(PythonsenseEndOfPreviousPythonFunction)
map <buffer> [m <Plug>(PythonsenseStartOfPythonFunction)
map <buffer> [] <Plug>(PythonsenseEndOfPreviousPythonClass)
map <buffer> [[ <Plug>(PythonsenseStartOfPythonClass)
nmap <buffer> \hp <Plug>(GitGutterPreviewHunk)
nmap <buffer> \hu <Plug>(GitGutterUndoHunk)
nmap <buffer> \hs <Plug>(GitGutterStageHunk)
xmap <buffer> \hs <Plug>(GitGutterStageHunk)
nmap <buffer> ]c <Plug>(GitGutterNextHunk)
map <buffer> ]M <Plug>(PythonsenseEndOfPythonFunction)
map <buffer> ]m <Plug>(PythonsenseStartOfNextPythonFunction)
map <buffer> ][ <Plug>(PythonsenseEndOfPythonClass)
map <buffer> ]] <Plug>(PythonsenseStartOfNextPythonClass)
omap <buffer> aq <Plug>(textobj-multilinestr-python-a)
xmap <buffer> aq <Plug>(textobj-multilinestr-python-a)
xmap <buffer> ad <Plug>(PythonsenseOuterDocStringTextObject)
omap <buffer> ad <Plug>(PythonsenseOuterDocStringTextObject)
omap <buffer> af <Plug>(PythonsenseOuterFunctionTextObject)
xmap <buffer> af <Plug>(PythonsenseOuterFunctionTextObject)
omap <buffer> ac <Plug>(PythonsenseOuterClassTextObject)
xmap <buffer> ac <Plug>(PythonsenseOuterClassTextObject)
omap <buffer> iq <Plug>(textobj-multilinestr-python-i)
xmap <buffer> iq <Plug>(textobj-multilinestr-python-i)
xmap <buffer> id <Plug>(PythonsenseInnerDocStringTextObject)
omap <buffer> id <Plug>(PythonsenseInnerDocStringTextObject)
omap <buffer> if <Plug>(PythonsenseInnerFunctionTextObject)
xmap <buffer> if <Plug>(PythonsenseInnerFunctionTextObject)
omap <buffer> ic <Plug>(PythonsenseInnerClassTextObject)
xmap <buffer> ic <Plug>(PythonsenseInnerClassTextObject)
nnoremap <buffer> <silent> <Plug>(PythonsensePyWhere) :Pywhere
onoremap <buffer> <silent> <Plug>(PythonsenseEndOfPreviousPythonFunction) V:call pythonsense#move_to_python_object('\(def\|async def\)', 1, 0, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPreviousPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 1, 0, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPreviousPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 1, 0, "n")
onoremap <buffer> <silent> <Plug>(PythonsenseStartOfPythonFunction) V:call pythonsense#move_to_python_object('\(def\|async def\)', 0, 0, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseStartOfPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 0, 0, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseStartOfPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 0, 0, "n")
onoremap <buffer> <silent> <Plug>(PythonsenseEndOfPythonFunction) V:call pythonsense#move_to_python_object('\(def\|async def\)', 1, 1, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 1, 1, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 1, 1, "n")
onoremap <buffer> <silent> <Plug>(PythonsenseStartOfNextPythonFunction) V:call pythonsense#move_to_python_object('\(def\|async def\)', 0, 1, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseStartOfNextPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 0, 1, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseStartOfNextPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 0, 1, "n")
onoremap <buffer> <silent> <Plug>(PythonsenseEndOfPreviousPythonClass) V:call pythonsense#move_to_python_object("class", 1, 0, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPreviousPythonClass) :call pythonsense#move_to_python_object("class", 1, 0, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPreviousPythonClass) :call pythonsense#move_to_python_object("class", 1, 0, "n")
onoremap <buffer> <silent> <Plug>(PythonsenseStartOfPythonClass) V:call pythonsense#move_to_python_object("class", 0, 0, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseStartOfPythonClass) :call pythonsense#move_to_python_object("class", 0, 0, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseStartOfPythonClass) :call pythonsense#move_to_python_object("class", 0, 0, "n")
onoremap <buffer> <silent> <Plug>(PythonsenseEndOfPythonClass) V:call pythonsense#move_to_python_object("class", 1, 1, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPythonClass) :call pythonsense#move_to_python_object("class", 1, 1, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPythonClass) :call pythonsense#move_to_python_object("class", 1, 1, "n")
onoremap <buffer> <silent> <Plug>(PythonsenseStartOfNextPythonClass) V:call pythonsense#move_to_python_object("class", 0, 1, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseStartOfNextPythonClass) :call pythonsense#move_to_python_object("class", 0, 1, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseStartOfNextPythonClass) :call pythonsense#move_to_python_object("class", 0, 1, "n")
vnoremap <buffer> <silent> <Plug>(PythonsenseInnerDocStringTextObject) :cal pythonsense#python_docstring_text_object(1)
vnoremap <buffer> <silent> <Plug>(PythonsenseOuterDocStringTextObject) :cal pythonsense#python_docstring_text_object(0)
vnoremap <buffer> <silent> <Plug>(PythonsenseInnerClassTextObject) :call pythonsense#python_class_text_object(1, "v")gv
vnoremap <buffer> <silent> <Plug>(PythonsenseOuterClassTextObject) :call pythonsense#python_class_text_object(0, "v")gv
vnoremap <buffer> <silent> <Plug>(PythonsenseInnerFunctionTextObject) :call pythonsense#python_function_text_object(1, "v")gv
vnoremap <buffer> <silent> <Plug>(PythonsenseOuterFunctionTextObject) :call pythonsense#python_function_text_object(0, "v")gv
onoremap <buffer> <silent> <Plug>(PythonsenseInnerDocStringTextObject) :call pythonsense#python_docstring_text_object(1)
onoremap <buffer> <silent> <Plug>(PythonsenseOuterDocStringTextObject) :call pythonsense#python_docstring_text_object(0)
onoremap <buffer> <silent> <Plug>(PythonsenseInnerClassTextObject) :call pythonsense#python_class_text_object(1, "o")
onoremap <buffer> <silent> <Plug>(PythonsenseOuterClassTextObject) :call pythonsense#python_class_text_object(0, "o")
onoremap <buffer> <silent> <Plug>(PythonsenseInnerFunctionTextObject) :call pythonsense#python_function_text_object(1, "o")
onoremap <buffer> <silent> <Plug>(PythonsenseOuterFunctionTextObject) :call pythonsense#python_function_text_object(0, "o")
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal concealcursor=inc
setlocal conceallevel=2
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=^\\s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcq
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=python#GetIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=python3\ -m\ pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
6,14fold
18,20fold
23,23fold
23,23fold
23,23fold
23,23fold
26,30fold
33,34fold
37,41fold
44,53fold
56,92fold
let &fdl = &fdl
23
normal! zo
23
normal! zo
23
normal! zo
23
normal! zc
23
normal! zc
let s:l = 98 - ((97 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 98
normal! 04|
wincmd w
argglobal
if bufexists(fnamemodify("Archived/calc.py", ":p")) | buffer Archived/calc.py | else | edit Archived/calc.py | endif
balt test.c
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> [c <Plug>(GitGutterPrevHunk)
map <buffer> [M <Plug>(PythonsenseEndOfPreviousPythonFunction)
map <buffer> [m <Plug>(PythonsenseStartOfPythonFunction)
map <buffer> [] <Plug>(PythonsenseEndOfPreviousPythonClass)
map <buffer> [[ <Plug>(PythonsenseStartOfPythonClass)
nmap <buffer> \hp <Plug>(GitGutterPreviewHunk)
nmap <buffer> \hu <Plug>(GitGutterUndoHunk)
nmap <buffer> \hs <Plug>(GitGutterStageHunk)
xmap <buffer> \hs <Plug>(GitGutterStageHunk)
nmap <buffer> ]c <Plug>(GitGutterNextHunk)
map <buffer> ]M <Plug>(PythonsenseEndOfPythonFunction)
map <buffer> ]m <Plug>(PythonsenseStartOfNextPythonFunction)
map <buffer> ][ <Plug>(PythonsenseEndOfPythonClass)
map <buffer> ]] <Plug>(PythonsenseStartOfNextPythonClass)
omap <buffer> aq <Plug>(textobj-multilinestr-python-a)
xmap <buffer> aq <Plug>(textobj-multilinestr-python-a)
xmap <buffer> ad <Plug>(PythonsenseOuterDocStringTextObject)
omap <buffer> ad <Plug>(PythonsenseOuterDocStringTextObject)
omap <buffer> af <Plug>(PythonsenseOuterFunctionTextObject)
xmap <buffer> af <Plug>(PythonsenseOuterFunctionTextObject)
omap <buffer> ac <Plug>(PythonsenseOuterClassTextObject)
xmap <buffer> ac <Plug>(PythonsenseOuterClassTextObject)
omap <buffer> iq <Plug>(textobj-multilinestr-python-i)
xmap <buffer> iq <Plug>(textobj-multilinestr-python-i)
xmap <buffer> id <Plug>(PythonsenseInnerDocStringTextObject)
omap <buffer> id <Plug>(PythonsenseInnerDocStringTextObject)
omap <buffer> if <Plug>(PythonsenseInnerFunctionTextObject)
xmap <buffer> if <Plug>(PythonsenseInnerFunctionTextObject)
omap <buffer> ic <Plug>(PythonsenseInnerClassTextObject)
xmap <buffer> ic <Plug>(PythonsenseInnerClassTextObject)
nnoremap <buffer> <silent> <Plug>(PythonsensePyWhere) :Pywhere
onoremap <buffer> <silent> <Plug>(PythonsenseEndOfPreviousPythonFunction) V:call pythonsense#move_to_python_object('\(def\|async def\)', 1, 0, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPreviousPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 1, 0, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPreviousPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 1, 0, "n")
onoremap <buffer> <silent> <Plug>(PythonsenseStartOfPythonFunction) V:call pythonsense#move_to_python_object('\(def\|async def\)', 0, 0, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseStartOfPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 0, 0, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseStartOfPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 0, 0, "n")
onoremap <buffer> <silent> <Plug>(PythonsenseEndOfPythonFunction) V:call pythonsense#move_to_python_object('\(def\|async def\)', 1, 1, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 1, 1, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 1, 1, "n")
onoremap <buffer> <silent> <Plug>(PythonsenseStartOfNextPythonFunction) V:call pythonsense#move_to_python_object('\(def\|async def\)', 0, 1, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseStartOfNextPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 0, 1, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseStartOfNextPythonFunction) :call pythonsense#move_to_python_object('\(def\|async def\)', 0, 1, "n")
onoremap <buffer> <silent> <Plug>(PythonsenseEndOfPreviousPythonClass) V:call pythonsense#move_to_python_object("class", 1, 0, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPreviousPythonClass) :call pythonsense#move_to_python_object("class", 1, 0, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPreviousPythonClass) :call pythonsense#move_to_python_object("class", 1, 0, "n")
onoremap <buffer> <silent> <Plug>(PythonsenseStartOfPythonClass) V:call pythonsense#move_to_python_object("class", 0, 0, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseStartOfPythonClass) :call pythonsense#move_to_python_object("class", 0, 0, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseStartOfPythonClass) :call pythonsense#move_to_python_object("class", 0, 0, "n")
onoremap <buffer> <silent> <Plug>(PythonsenseEndOfPythonClass) V:call pythonsense#move_to_python_object("class", 1, 1, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPythonClass) :call pythonsense#move_to_python_object("class", 1, 1, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseEndOfPythonClass) :call pythonsense#move_to_python_object("class", 1, 1, "n")
onoremap <buffer> <silent> <Plug>(PythonsenseStartOfNextPythonClass) V:call pythonsense#move_to_python_object("class", 0, 1, "o")
vnoremap <buffer> <silent> <Plug>(PythonsenseStartOfNextPythonClass) :call pythonsense#move_to_python_object("class", 0, 1, "v")
nnoremap <buffer> <silent> <Plug>(PythonsenseStartOfNextPythonClass) :call pythonsense#move_to_python_object("class", 0, 1, "n")
vnoremap <buffer> <silent> <Plug>(PythonsenseInnerDocStringTextObject) :cal pythonsense#python_docstring_text_object(1)
vnoremap <buffer> <silent> <Plug>(PythonsenseOuterDocStringTextObject) :cal pythonsense#python_docstring_text_object(0)
vnoremap <buffer> <silent> <Plug>(PythonsenseInnerClassTextObject) :call pythonsense#python_class_text_object(1, "v")gv
vnoremap <buffer> <silent> <Plug>(PythonsenseOuterClassTextObject) :call pythonsense#python_class_text_object(0, "v")gv
vnoremap <buffer> <silent> <Plug>(PythonsenseInnerFunctionTextObject) :call pythonsense#python_function_text_object(1, "v")gv
vnoremap <buffer> <silent> <Plug>(PythonsenseOuterFunctionTextObject) :call pythonsense#python_function_text_object(0, "v")gv
onoremap <buffer> <silent> <Plug>(PythonsenseInnerDocStringTextObject) :call pythonsense#python_docstring_text_object(1)
onoremap <buffer> <silent> <Plug>(PythonsenseOuterDocStringTextObject) :call pythonsense#python_docstring_text_object(0)
onoremap <buffer> <silent> <Plug>(PythonsenseInnerClassTextObject) :call pythonsense#python_class_text_object(1, "o")
onoremap <buffer> <silent> <Plug>(PythonsenseOuterClassTextObject) :call pythonsense#python_class_text_object(0, "o")
onoremap <buffer> <silent> <Plug>(PythonsenseInnerFunctionTextObject) :call pythonsense#python_function_text_object(1, "o")
onoremap <buffer> <silent> <Plug>(PythonsenseOuterFunctionTextObject) :call pythonsense#python_function_text_object(0, "o")
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal concealcursor=inc
setlocal conceallevel=2
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=^\\s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcq
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=python#GetIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=python3\ -m\ pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 107 - ((27 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 107
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("test.c", ":p")) | buffer test.c | else | edit test.c | endif
balt Archived/calc.py
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> [c <Plug>(GitGutterPrevHunk)
nmap <buffer> \hp <Plug>(GitGutterPreviewHunk)
nmap <buffer> \hu <Plug>(GitGutterUndoHunk)
nmap <buffer> \hs <Plug>(GitGutterStageHunk)
xmap <buffer> \hs <Plug>(GitGutterStageHunk)
nmap <buffer> ]c <Plug>(GitGutterNextHunk)
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,:///,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal concealcursor=inc
setlocal conceallevel=2
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=croql
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*#\\s*include
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(3)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 2 - ((1 * winheight(0) + 2) / 5)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 05|
wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 84) / 169)
exe '2resize ' . ((&lines * 33 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 84 + 84) / 169)
exe '3resize ' . ((&lines * 5 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 84 + 84) / 169)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
set shortmess=filnxtToOSc
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
