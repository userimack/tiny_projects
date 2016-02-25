# In a given fragment of text, delete all the lowercase characters a-z

tr -d [a-z] <filename>


# In a given fragment of text, replace all parentheses () with box brackets [].

# tutorial : http://www.thegeekstuff.com/2012/12/linux-tr-command/

tr '()' '[]' <filename>