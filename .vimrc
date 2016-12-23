" 環境設定系
" "------------------------------------------
" シンタックスハイライト
syntax on
" エンコード
set encoding=utf8
" ファイルエンコード
set fileencoding=utf-8
" .swapファイルを作らない
set noswapfile
"---------------------------------------------------------------------
" 移動系
" ---------------------------------------------------------------------
" スクロールする時に下が見えるようにする
set scrolloff=5
" 行間をシームレスに移動する
set whichwrap+=h,l,<,>,[,],b,s
"カーソルを常に画面の中央に表示させる
set scrolloff=999
" ---------------------------------------------------------------------
" 表示系
" ---------------------------------------------------------------------
" 行番号を表示
""set number
" 右下に表示される行・列の番号を表示する
set ruler
" タブの表示を狭める
set tabstop=3
" 不可視文字の指定
set list  " 不可視文字を表示する
set listchars=tab:>-,trail:.  " タブを >--- 半スペを . で表示する
" カーソル行の背景色変更
set cursorline
" 対応括弧に<と>のペアを追加
set matchpairs& matchpairs+=<:>
" 対応括弧をハイライト表示する
set showmatch
" 小文字の検索でも大文字も見つかるようにする
set ignorecase
" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase
" インクリメンタルサーチを行う
set incsearch
" ---------------------------------------------------------------------
" カラースキームの指定
" ---------------------------------------------------------------------
syntax on
" BusyBee https://github.com/vim-scripts/BusyBee
"colorscheme BusyBee
" despacio https://github.com/AlessandroYorba/Despacio
colorscheme despacio
set t_Co=256
" ---------------------------------------------------------------------
" keymap
" ---------------------------------------------------------------------
" insert modeから抜ける
inoremap <silent> jj <ESC>
" 括弧の補完
inoremap {    {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

" set number の有効/無効切替
" refer : http://qiita.com/smison/items/f392037f1164eba5cc74
function Setnumber()
	if &number
		setlocal nonumber
	else
		setlocal number
	endif
endfunction
nnoremap <silent> <C-n> :call Setnumber()<CR>

"NeoBundle Scripts-----------------------------
"http://qiita.com/puriketu99/items/1c32d3f24cc2919203eb
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'scrooloose/nerdtree'

" You can specify revision/branch/tag.

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
