os: mac
app: Vim
app: Code
app: /.*/
and title: /vim/i

-
unfold all:
    key(z)
    key(shift-r)
go to top:
    key(g)
    key(g)
go to bottom:
    key(shift-g)
    key(shift-g)
go to screen top:
    key(shift-h)
go to screen bottom:
    key(shift-l)
go to screen middle:
    key(shift-m)
go line begin:
    key(^)
select block:
    key(ctrl-v)
right to file:
    insert(":w")
    key(enter)
quit this file:
    insert(":q")
    key(enter)
force quit this file:
    insert(":q!")
    key(enter)
quit all files:
    insert(":qa")
    key(enter)
force quit all files:
    insert(":qa!")
    key(enter)
refresh edit file:
    insert(":e")
    key(enter)
search current word [next]:
    key(*)
search current word (previous|prev):
    key(#)
search for: 
    key(/)
search ignore case: 
    key(/)
    insert("\c")
    key(left)
    key(left)
search bounded: 
    key(/)
    insert("\<\>")
    key(left)
    key(left)
replace things:
    insert(":/")
change <number_small> words|word:
    key(c)
    insert("{number_small}")
    key(w)
change current line:
    key(c)
    key(c)
join lines:
    key(J)

# window pain management
splitter file vertically:
    key(esc)
    insert(":vsplit")

splitter file horizontally:
    key(esc)
    insert(":split")
splitter vertically:
    key(esc)
    insert(":vsplit")
    key(enter)

splitter horizontally:
    key(esc)
    insert(":split")
    key(enter)
pain equally:
    key(esc)
    key(ctrl-w)
    key(=)
window pain:
    key(esc)
    key(ctrl-w)
toggle last window:
    key(esc)
    insert("gT")
toggle next window:
    key(esc)
    insert("gt")
open nerd file:
    key(o)
open nerd file hurry:
    key(i)
open nerd file verdi:
    key(s)
crappy up <number_small>:
    key(shift-v)
    key(k)
    repeat(number_small - 1)
    key(y)

crappy next <number_small>:
    key(shift-v)
    key(j)
    repeat(number_small - 1)
    key(y)
redo that:
    key(esc)
    key(ctrl-r)
undo that:
    key(esc)
    key(u)
toggle nerdtree:
        key(ctrl-n)
delete [around] word:
    key(d)
    key(a)
    key(w)

change [inner] word:
    key(c)
    key(i)
    key(w)

change until:
    key(d)
    key(t)

delete until:
    key(d)
    key(t)

easy <number_small> up:
    key(k)
    repeat(number_small - 1)

easy <number_small> down:
    key(j)
    repeat(number_small - 1)

delete line:
    key(d)
    key(d)


insert line up:
    key(m)
    key(z)
    key(shift-o)
    key(escape)
    key(`)
    key(z)

insert line down:
    key(m)
    key(z)
    key(o)
    key(escape)
    sleep(50ms)
    key(`)
    key(z)
