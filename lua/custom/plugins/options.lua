vim.cmd [[
  set foldmethod=marker
  set viewdir=$HOME/vimfiles/view
  " augroup remember_folds
  " 	" NOTE: In the event you run into compatibility issues, some plugins/neovim require `*.*` to be
  " 	" used rather than just`*`
  " 	autocmd!
  " 	autocmd BufWinLeave *.* mkview
  " 	autocmd BufWinEnter *.* silent loadview
  " augroup END

  set hlsearch
  set incsearch
  set ignorecase
  set smartcase
  set gdefault

  set textwidth=100
  set colorcolumn=+1
  " FIXME: How to have it properly carry over comments and/or tab spacing when entering to a new line
  " either manually or automatically by way of typing past the limit or auto-formatting? You have this
  " setup properly in your virtual machine at home...
  set tabstop=2
  set shiftwidth=2
  set shiftround
  set smarttab
  set showbreak=...
  set linebreak
  set nomodeline

  set autoindent
  set copyindent
  set breakindent
  set nostartofline
  set matchtime=1
  set backspace=indent,eol,start
  " set formatoptions=tcrqn1jp
  autocmd FileType * set formatoptions=tcrqn1jp

  set autoread

  set ttimeoutlen=10
  set ttyfast

  set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
  set laststatus=2
  set report=0
  " set showmode
  set noshowmode
  set noshowcmd
  set showcmd
  set shortmess-=S
  set shortmess+=F

  " set numberwidth=8
  " Relative number options
  " set nonu nornu
  " set nu nornu
  " set nonu rnu
  set nu rnu

  set wildmenu
  set wildmode=list:longest
  set wildignore=.o,.obj,.bak,.exe

  " set splitright
  " set splitbelow

  set backup
  set writebackup
  set swapfile

  " I initially liked this setting, since it forces j/k to be visual movements
  " when any sort of word wrapping is involved. But, in practice, I found it
  " caused relative line jumps to be more difficult. If there were, say, two line
  " wraps between cursor and 10j, it would 'include' those two visual word wraps,
  " effectively putting the cursor at 8j. And I couldn't find a way to override
  " it, so I just put it back to default
  " nnoremap j gj
  " nnoremap k gk
  noremap <C-j> gj
  noremap <C-k> gk

  nnoremap <silent><leader>d :lcd %:p:h<CR>
    "set :pw to match the file in the current window, AND ONLY FOR the current window
  nnoremap <silent><leader>D :cd %:p:h<CR>
    "set :pw to match the file in the current window, BUT FOR ALL windows

  " set termwintype=conpty
  " highlight! link Terminal Normal

  " au BufNewFile,BufRead *.py,*.pyw,*.c,*.h
  "   \ match BadWhiteSpace /\s\+$/

  nnoremap n nzzzv
  nnoremap N Nzzzv
  nnoremap J mzJ`z
  nnoremap { {zz
  nnoremap } }zz
  nnoremap ]c ]czz
  nnoremap [c [czz
  nnoremap <silent> [q :cprev<CR>zz
  nnoremap <silent> ]q :cnext<CR>zz
  nnoremap <silent> [Q :cfirst<CR>zz
  nnoremap <silent> ]Q :clast<CR>zz

  let g:startify_custom_header = []

  " fzf
  " Add bang to go fullscreen
  nnoremap <C-p> :GFiles<CR>
  nnoremap <C-e> :FZF<CR>
  " nnoremap <C-s> :Ag<SPACE>
  nnoremap <C-s> :Rg<SPACE>
  nnoremap <C-b> :Buffers<CR>
  nnoremap <C-h> :History<CR>
  "
  " pop-up
  " nnoremap <C-p> :GFiles<CR>
  " nnoremap <C-e> :FZF<CR>
  " nnoremap <C-s> :Ag<SPACE>
  " nnoremap <C-s> :Rg<SPACE>
  " nnoremap <C-b> :Buffers<CR>
  "
  " NOTE: from the output message, the preview window seems to require bash
  " let g:fzf_preview_window = ['right,50%,<70(up,40%)', 'ctrl-/']
  let g:fzf_preview_window = []
  let g:fzf_force_termguicolors = 1
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
  " let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 1.0 } }

  " set shell=powershell
  " set shellcmdflag=-command
  " set shellquote=\"
  " set shellxquote=

  " let g:floaterm_width = 0.9
  " let g:floaterm_height = 0.9
  " " let g:floaterm_keymap_toggle = '<F12>'
  " nnoremap <silent> <F12> :FloatermToggle<CR>

  " set -g default-terminal "tmux-256color"
  " set default-terminal "tmux-256color"

]]
