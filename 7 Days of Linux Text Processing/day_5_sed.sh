# In this challenge, we will practice using the sed command to parse and transform text.

# Resources
# Sed is a popular tool that enables quick parsing and transformation of text.

# Examples of sed in action:

# Substitute the first occurrence of 'editor' with 'tool':

# `$:~/hackerrank/bash/grep/grep1$` echo "My favorite programming editor is Emacs. Another editor I like is Vim." | sed -e s/editor/tool/
# My favorite programming tool is Emacs. Another editor I like is Vim.

# Substitute all the occurrences of 'editor' with 'tool':

# `$:~/hackerrank/bash/grep/grep1$` echo "My favorite programming editor is Emacs. Another editor I like is Vim." | sed -e s/editor/tool/g
# My favorite programming tool is Emacs. Another tool I like is Vim.  

# Substitute the second occurrence of 'editor' with 'tool':

# `$:~/hackerrank/bash/grep/grep1$` echo "My favorite programming editor is Emacs. Another editor I like is Vim." | sed -e s/editor/tool/2
# My favorite programming editor is Emacs. Another tool I like is Vim.

# Highlight all the occurrences of 'editor' by wrapping them up in brace brackets:

# `$:~/hackerrank/bash/grep/grep1$` echo "My favorite programming editor is Emacs. Another editor I like is Vim." | sed -e s/editor/{\&}/g
# My favorite programming {editor} is Emacs. Another {editor} I like is Vim.

# ref:
# http://www.grymoire.com/Unix/Sed.html#uh-10a
# http://tldp.org/LDP/abs/html/x23170.html
# http://www.folkstalk.com/2012/01/sed-command-in-unix-examples.html


# Task
# For each line in a given input file, transform the first occurrence of the word 'the' with 'this'. The search and transformation should be
#  strictly case sensitive. 
sed -e 's/\bthe\b/this/' text_grep.txt

sed -e '/^[^#]/ s/\bthe\b/this/' text_grep.txt



# For each line in a given input file, transform all the occurrences of the word 'thy' with 'your'. The search should be case insensitive, 
# i.e. 'thy', 'Thy', 'tHy' etc. should be transformed to 'your'. 
sed -e 's/thy/your/Ig'