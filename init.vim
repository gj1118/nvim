call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Bufferline
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'akinsho/nvim-bufferline.lua'

"LSP 
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

"galaxyline
Plug 'glepnir/galaxyline.nvim', { 'branch': 'main' }


" Auto pairs for '(' '[' '{'

Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
Plug 'Yggdroot/indentLine'
Plug 'voldikss/vim-floaterm'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'terryma/vim-multiple-cursors'
Plug 'liuchengxu/vim-which-key'
Plug 'qpkorr/vim-bufkill'
"Prettier plugin - see https://prettier.io/docs/en/vim.html for more
"information
Plug 'sbdchd/neoformat' 
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-fugitive'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'metakirby5/codi.vim' "interactive REPL
Plug 'ray-x/lsp_signature.nvim' "LSP methods signature help


"Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'liuchengxu/vista.vim'
Plug 'tpope/vim-commentary'

"color schemes 
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'jacoborus/tender.vim'
Plug 'tek256/simple-dark'
Plug 'sonph/onehalf', { 'rtp': 'vim' } "One half light colored theme 
Plug 'romannmk/ambiance-vim'
Plug 'rktjmp/lush.nvim', {'branch' : 'main'}
Plug 'mcchrish/zenbones.nvim', {'branch':'main'}
Plug 'jaredgorski/spacecamp'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'EdenEast/nightfox.nvim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'projekt0n/github-nvim-theme'
call plug#end()

"disable indent guides 
let g:indentLine_enabled = 0
let g:WebDevIconsOS = 'Darwin'
" let g:zenbones_compat = 1
let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 0.5, 'highlight': 'Comment' } }
"set linenumbers
set clipboard+=unnamedplus
set guicursor=
set noshowmatch
"set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set termguicolors
set incsearch
set scrolloff=8
set autoread "Automatically read file when changed outside Vim
let loaded_matchparen = 1 " this should fix issue with long lines
"by default set the ignorecase to be turned off when searching
"see https://kb.ucla.edu/articles/case-insensitive-searching-in-vi for more
"information
set ignorecase


" code folding settings
set foldmethod=syntax " fold based on indent
set foldlevelstart=99
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

" keep visual selection when indenting/outdenting
vmap < <gv
vmap > >gv

"set SpaceBar as our leader key
nnoremap <SPACE> <Nop>
let mapleader=" "
set wrap linebreak nolist
command! -nargs=* Wrap set wrap linebreak nolist
 set updatetime=50
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
set fcs=eob:\ "Don't show the tildes in neovim
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <C-p> <cmd>Telescope find_files<CR>
nnoremap <C-l> :GFiles<CR>
nnoremap <C-f> <cmd>Telescope live_grep <CR>
nnoremap <C-b> <cmd>Telescope buffers<CR>
nnoremap <C-g> :BLines<CR>
nnoremap <C-k> :Windows<CR>
nnoremap <C-c> <cmd>Telescope git_commits<CR>
nnoremap <C-t> :below new +term<CR> :resize 10<CR> 
nnoremap <C-r> :RnvimrToggle<CR>
" pick color scheme
nnoremap <leader>cs :lua require'telescope.builtin'.colorscheme{}<CR>

"intergrated terminal
nnoremap <leader>:t Vista<CR>
"split handling
nnoremap <leader>v :vsplit<CR> 
nnoremap <leader>h :split<CR> 


"telescope related settings 
"nnoremap <silent><C-g> <cmd>lua require('telescope.builtin').live_grep{}<CR>
nnoremap <silent>ch <cmd>lua require('telescope.builtin').command_history{}<CR>
nnoremap <silent>rf <cmd>lua require'telescope.builtin'.lsp_references{}<CR>
nnoremap <silent>bf <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find{}<CR>
nnoremap <silent>pw <cmd>lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>

"zoom in and out of panes
noremap zz <c-w>_ \| <c-w>\|
noremap zo <c-w>=

set t_Co=256 "support 256 colors 
" true color support
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

"
" colorscheme onehalflight
colorscheme vimbones 
"colorscheme spacecamp
set cursorline

"highlight current line
" hi CursorLine  guibg=#1f1e1e "use this when the color theme is dark 
" hi CursorLine guibg=#e6e3e1 "use this when the color theme is light 

"set italics
hi Comment gui=italic cterm=italic
hi Type gui=italic cterm=italic
hi Structure gui=italic cterm=italic
hi StorageClass gui=italic cterm=italic
hi Identifier gui=italic cterm=italic
hi Constant  gui=italic cterm=italic


if executable('rg')
    let g:rg_derive_root='true' "search from the parent
endif

"set commentary to comment JSON files
autocmd FileType json set commentstring=\\\\\ %s


" mouse support for file scrolling 
set mouse=a

set showtabline=2                       " Always show tabs
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right

" Floaterm
let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=1
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1


"Prettier settings 
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
"autocmd BufWritePre * undojoin,TextChanged * undojoin ,InsertLeave * undojoin *.js*,css,scssi | Neoformat
"
"
"Attach the lsp_signature plugin when a new file is opened 
autocmd BufReadPost,FileReadPost lua require "lsp_signature".on_attach()

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>


nnoremap <leader>+ :vertical  resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>


set completeopt=menu,menuone,noselect
lua << EOF
require("bufferline").setup{
options = {
        enforce_regular_tabs = false,
        show_tab_indicators= false,
        max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 18,
        always_show_bufferline = true,
    }
}
-- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        --vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it. 
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
  }
require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }

require("lsp")
require("statusbar")
 require('telescope').setup{
 defaults = {
   winblend = 0,
   layout_strategy="horizontal"
  }
}
EOF


