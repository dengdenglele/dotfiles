#!/usr/bin/bash

# YouTube: Effective Nerd Fonts in Multiple Terminals 
# https://www.youtube.com/watch?v=mQdB_kHyZn8

# code copied from
# https://gist.github.com/elijahmanor/c10e5787bf9ac6b8c276e47e6745826c?permalink_comment_id=5012055#gistcomment-5012055


smoke_tests="Normal
\033[1mBold\033[22m
\033[3mItalic\033[23m
\033[3;1mBold Italic\033[0m
\033[4mUnderline\033[24m
== === !== >= <= =>
Nerdfont
         󰾆      󰢻   󱑥   󰒲   󰗼   
Fontawesome Free
                           

"


printf "%b" "${smoke_tests}"
