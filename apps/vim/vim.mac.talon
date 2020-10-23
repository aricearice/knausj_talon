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
    key(escape)
    key(g)
    key(g)
go to bottom:
    key(escape)
    key(shift-g)
    key(shift-g)
go to screen top:
    key(escape)
    key(shift-h)
go to screen bottom:
    key(escape)
    key(shift-l)
go to screen middle:
    key(escape)
    key(shift-m)
go to line:
    key(escape)
    ":"

go line begin:
    key(escape)
    key(^)
select block:
    key(escape)
    key(ctrl-v)
right to file:
    key(escape)
    insert(":w")
    key(enter)
quit this file:
    key(escape)
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
    insert(":%s/")
change <number_small> (words|word):
    key(c)
    insert("{number_small}")
    key(w)
change current line:
    key(escape)
    key(c)
    key(c)
join lines:
    key(J)

# window pain management
splitter file vertically:
    key(escape)
    insert(":vsplit")

splitter file horizontally:
    key(escape)
    key(escape)
    insert(":split")
splitter vertically:
    key(escape)
    insert(":vsplit")
    key(enter)

splitter horizontally:
    key(escape)
    insert(":split")
    key(enter)
pain equally:
    key(escape)
    key(ctrl-w)
    key(=)
window pain:
    key(escape)
    key(ctrl-w)
toggle last window:
    key(escape)
    insert("gT")
toggle next window:
    key(escape)
    insert("gt")
open nerd file:
    key(o)
open nerd file hurry:
    key(i)
open nerd file verdi:
    key(s)
crappy up <number_small>:
    key(escape)
    key(shift-v)
    key(k)
    repeat(number_small - 1)
    key(y)

crappy next <number_small>:
    key(escape)
    key(shift-v)
    key(j)
    repeat(number_small - 1)
    key(y)
redo that:
    key(escape)
    key(ctrl-r)
undo that:
    key(escape)
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
