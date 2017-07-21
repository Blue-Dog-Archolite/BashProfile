if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/thief/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/thief/.vim/dein'
let g:dein#_runtime_path = '/home/thief/.vim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/thief/.vim/dein/.cache/init.vim'
let &runtimepath = '/home/thief/.config/nvim,/etc/xdg/nvim,/home/thief/.local/share/nvim/site,/home/thief/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/home/thief/.vim/dein/repos/github.com/Shougo/dein.vim,/home/thief/.vim/dein/.cache/init.vim/.dein,/usr/share/nvim/site,/usr/share/nvim/runtime,/home/thief/.vim/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,/home/thief/.local/share/flatpak/exports/share/nvim/site/after,/home/thief/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/thief/.config/nvim/after,/home/thief/.fzf'
filetype off
