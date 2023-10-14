return{
    ensure_installed = {
    -- A list of parser names, or "all"
    'bash', 'c', 'cpp', 'css', 'html', 'javascript', 'json', 'lua', 'python', 'rust', 'typescript', 'vim', 'yaml',
},
    -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
},
}
