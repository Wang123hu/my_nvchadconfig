vim.cmd([[
    let g:nvimgdb_disable_start_keymaps = 1
    let g:nvimgdb_use_find_executables = 0
    let g:nvimgdb_use_cmake_to_find_executables = 0
    let w:nvimgdb_termwin_command = "rightbelow vnew"
    let w:nvimgdb_codewin_command = "vnew"
]])
