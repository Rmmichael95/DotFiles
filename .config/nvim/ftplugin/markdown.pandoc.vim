set conceallevel=0
" syntax highlighting for latex blocks in markdown
let g:vim_markdown_math = 1

" markdown
let g:vim_markdown_conceal = 0
let g:vim_markdown_math = 0

" Pandoc
let g:pandoc_use_conceal = 1
let g:pandoc_syntax_dont_use_conceal_for_rules = ['block', 'codeblock_start', 'codeblock_delim']
let g:pandoc_syntax_user_cchars = {'li': '*'}
let g:pantondoc_use_pandoc_markdown = 1
"let g:pandoc#formatting#equalprg = \"pandoc -t markdown --no-wrap --atx-headers"

" YAML syntax highlighting for frontmatter
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_fenced_languages = [
            \'csharp=cs',
            \ 'cpp=cpp',
            \'c=c',
            \'rust=rust',
            \'python=python',
            \'sh=sh',
            \'html=html',
            \'md=markdown']
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_conceal = 0
