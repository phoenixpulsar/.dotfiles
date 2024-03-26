"set scrolloff=8
"set number
"set relativenumber
"set noerrorbells
"set tabstop=2 softtabstop=2
"set shiftwidth=2
"set expandtab
"set smartindent

""used to comment out lines with cmd + /, see iterm preferences where we receive
""pipe cmd + / to iterm and it pipes it to ++ below
"vmap ++ <plug>NERDCommenterToggle
"nmap ++ <plug>NERDCommenterToggle


"call plug#begin('~/.vim/plugged')
"" The default plugin directory will be as follows:
"" '~/.vim/plugged'

"Plug 'scrooloose/nerdcommenter'
"Plug 'arcticicestudio/nord-vim'
""fzf lets you plug any list into it and then do a fuzzy find
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"Plug 'tpope/vim-fugitive'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

"call plug#end()


"colorscheme nord
"set background=dark

"let mapleader = " "
"nnoremap <leader>pv :Sex<CR>
"nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
"nnoremap <C-p> :GFiles<CR>
"nnoremap <C-j> :cnext<CR>
"nnoremap <C-k> :cprev<CR>
"nnoremap <leader>pf :Files<CR>

"" LSP config (the mappings used in the default file don't quite work right)
"nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
"nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
"nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
"nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
"nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
"nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
"nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
"nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
