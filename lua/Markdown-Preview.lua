return {
    "iamcco/markdown-preview.nvim",
    cmd = {"MarkdownPreviewToggle", "MarkdownPreview","MarkdownPreviewStop"},
    keys = {};
    ft = { "markdown", },
    build = function() 
        vim.fn["mkdp#util#install"]() 
    end,
}

