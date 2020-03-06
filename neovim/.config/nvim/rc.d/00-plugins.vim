" ==================================================
" vim-plug  setup
" ==================================================
"
call plug#begin('~/.local/share/nvim/plugged')

" Color schemes and appearance

Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'chriskempson/base16-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'kaicataldo/material.vim'

" Appearance
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/vim-journal'
Plug 'luochen1990/rainbow'
Plug 'bling/vim-bufferline'

" easy way to rezise and exchange windows
Plug 'simeji/winresizer'


" General utilities

Plug 'ctrlpvim/ctrlp.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ervandew/supertab'
Plug 'vim-scripts/DrawIt'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-repeat'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-abolish'
Plug 'Yggdroot/indentLine'
Plug 'chrisbra/Colorizer'
Plug 'heavenshell/vim-pydocstring'
Plug 'vim-scripts/loremipsum'
Plug 'metakirby5/codi.vim'
Plug 'dkarter/bullets.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'benmills/vimux'
Plug 'schickling/vim-bufonly'
Plug 'shougo/echodoc.vim'
Plug 'tpope/vim-sleuth'
"Plug 'tpope/vim-unimpaired'
Plug 'shougo/denite.nvim'
Plug 'wincent/loupe'
Plug 'jez/vim-superman' " Open man with vim using vman (need to be configured in zsh boot)
Plug 'blueyed/vim-diminactive' " Plug to dim not-focused windows
Plug 'lambdalisue/suda.vim' " Write file with sudo
Plug 'junegunn/vim-peekaboo' " Display register values on " and @
Plug 'yangmillstheory/vim-snipe' " replace f F t T to target easily the motion

" undo tree
Plug 'simnalamburt/vim-mundo'
" registers
Plug 'bfredl/nvim-miniyank'
" close the current buffer
Plug 'moll/vim-bbye'


" Version control support
"
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ludovicchabant/vim-lawrencium'
Plug 'junegunn/gv.vim'


" Programming support

Plug 'sheerun/vim-polyglot' " Over 70 language packs
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
Plug 'elzr/vim-json'
Plug 'tpope/vim-commentary'
Plug 'majutsushi/tagbar'
Plug 'liuchengxu/vista.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-scripts/Shebang'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/MatchTagAlways'
Plug 'amiorin/vim-project'
Plug 'mhinz/vim-startify'
Plug 'AndrewRadev/splitjoin.vim' " Split arrays in PHP / struct in Go / other things


" Jump to definition
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'skywind3000/vim-preview'


" fzf - poweful fuzzy finder
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
source /usr/share/doc/fzf/examples/fzf.vim

" allow multisearch in current directory / multi replace as well
Plug 'wincent/ferret'



" Generic Programming Support
Plug 'tobyS/vmustache'
Plug 'janko-m/vim-test'
Plug 'maksimr/vim-jsbeautify'
Plug 'HiPhish/repl.nvim'
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'vim-scripts/Fold-license'
Plug 'neomake/neomake'
Plug 'joonty/vdebug'
Plug 'ap/vim-css-color' " display the hexadecimal colors - useful for css and color config


" systemd syntax and error
Plug 'wgwoods/vim-systemd-syntax'

" emmet for html
Plug 'mattn/emmet-vim'

" Markdown / Writting
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'

" LaTeX
Plug 'lervag/vimtex'

" Programming languages
Plug 'bfrg/vim-cpp-modern'
Plug 'klen/python-mode'
Plug 'davidhalter/jedi-vim'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'Quramy/tsuquyomi'
Plug 'groenewege/vim-less'
Plug 'vim-scripts/po.vim--Jelenak'

" PHP Support
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'vim-php/tagbar-phpctags.vim'
Plug 'tobyS/pdv'
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'Rican7/php-doc-modded'

" Erlang Support
Plug 'vim-erlang/vim-erlang-tags'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-compiler'

" Elixir Support
Plug 'elixir-lang/vim-elixir'
Plug 'avdgaag/vim-phoenix'
Plug 'mmorearty/elixir-ctags'
Plug 'mattreduce/vim-mix'
Plug 'BjRo/vim-extest'
Plug 'frost/vim-eh-docs'
Plug 'slashmili/alchemist.vim'
"Plug 'tpope/vim-endwise'
Plug 'jadercorrea/elixir_generator.vim'
Plug 'mhinz/vim-mix-format'

" Elm Support
Plug 'lambdatoast/elm.vim'

" golang development
Plug 'fatih/vim-go', {'for': 'go'} " general plugin
Plug 'godoctor/godoctor.vim', {'for': 'go'} " refactoring
Plug 'sebdah/vim-delve', {'for': 'go'} " debugger

" twig
Plug 'lumiliet/vim-twig', {'for': 'twig'}

" javascript plugins
Plug 'pangloss/vim-javascript'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx', 'vue'], 'do': 'npm install'}

Plug 'leafgarland/typescript-vim'

" For react
Plug 'mxw/vim-jsx'

" For Vue
Plug 'posva/vim-vue'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}
Plug 'neoclide/coc-neco'
Plug 'othree/csscomplete.vim'
Plug 'othree/html5.vim'
Plug 'othree/xml.vim'
Plug 'c9s/perlomni.vim'
"Plug 'expipiplus1/vscode-hie-server', { 'branch': 'coc.nvim',  'do': 'yarn install --frozen-lockfile'}


" CSV plugin
Plug 'chrisbra/csv.vim'

" toml syntax highlighting
Plug 'cespare/vim-toml'


call plug#end()
