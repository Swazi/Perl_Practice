#\n	Newline
#\r	Return
#\t	Tab
#\f	Formfeed
#\b	Backspace
#\a	Bell
#\e	Escape (ASCII escape character)
#\007	Any octal ASCII value (here, 007 = bell)
#\x7f	Any hex ASCII value (here, 7f = delete)
#\x{2744}	Any hex Unicode code point (here, U+2744 = snowflake)
#\cC	A “control” character (here, Ctrl-C)
#\\	Backslash
#\“	Double quote
#\l	Lowercase next letter
#\L	Lowercase all following letters until \E
#\u	Uppercase next letter
#\U	Uppercase all following letters until \E
#\Q	Quote nonword characters by adding a backslash until \E
#\E	End \L, \U, or \Q

# String operators

# Concatenate
printf "hello" . "world\n";       # same as "helloworld"
printf "hello" . ' ' . "world\n"; # same as 'hello world'
printf 'hello world' . "\n";    # same as "hello world\n"


