tag: user.file_manager
-
title force: user.file_manager_refresh_title()
manager show: user.file_manager_toggle_pickers()

go docks: user.file_manager_open_user_directory("Documents")
go downloads: user.file_manager_open_user_directory("Downloads")
go pictures: user.file_manager_open_user_directory("Pictures")
go profile: user.file_manager_open_user_directory("")
go talon home: user.file_manager_open_directory(path.talon_home())
go talon user: user.file_manager_open_directory(path.talon_user())
go user: user.file_manager_open_directory(path.user_home())
go back: user.file_manager_go_back()
go forward: user.file_manager_go_forward()
daddy: user.file_manager_open_parent()

^follow <number>$: user.file_manager_open_directory(number - 1)
^open <number>$: user.file_manager_open_file(number - 1)
^folder <number>$: user.file_manager_select_directory(number - 1)
^file <number>$: user.file_manager_select_file(number - 1)

#new folder
folder new: user.file_manager_new_folder()

#show properties
properties show: user.file_manager_show_properties()

# open terminal at location
terminal here: user.file_manager_terminal_here()

folder next: user.file_manager_next_folder_page()
folder last: user.file_manager_previous_folder_page()

file next: user.file_manager_next_file_page()
file last: user.file_manager_previous_file_page()

lisa: "ls "
lizzie: "ls\n"
lily: "ls -al "
lizard: "ls -al\n"

# directory and files
katie: "cd "
katie <user.paths>:
    insert("cd {paths}\n")
    insert("ls\n")
katie up: "cd ../\n"
(parent|up) dir: "../"
traverse: "../"
katie home: "cd\n"
katie last: "cd -\n"

make (dur|dear|dir|directory): "mkdir "
make (dur|dear|dir|directory) <user.text>: "mkdir {text}"
remove (dur|dear|dir|directory): "rmdir "
remove (dur|dear|dir|directory) <user.text>: "rmdir {text}"
remove file: "rm "
tree: "tree\n"
temp (dur|dear|dir|directory): "cd /tmp\n"
pop (dur|dear|dir|directory): "popd\n"

# permissions
make executable: "chmod +x "
change ownership: "chown "

# links
sim link: "ln -s "
sim link force: "ln -sf "
hard link: "ln "

# finds
list sim links: "find . -maxdepth 1 -type l  -ls\n"
list (directories|folders): "find . -maxdepth 1 -type d  -ls\n"
list files: "find . -maxdepth 1 -type f  -ls\n"

touch: "touch "
file: "file "
# file management
move file: "mv "
copy file: "cp "

# file viewing
less: "less "
now less [that]:
    edit.up()
    insert("| less\n")
show me <user.text>: "cat {text}"
show me: "cat "

clear [screen|page]: "clear\n"

# find
find file: "find . -name "
fuzzy find file:
    insert("find . -name \"**\"")
    key("left")
    key("left")

# networking
show (I P|eye pee): "ip addr\n"
show route: "ip route\n"
net stat: "netstat -ant\n"
net cat: "nc -vv "
net cat listener: "nc -v -l -p "
show hosts file: "cat /etc/hosts\n"
edit hosts file: "sudo vi /etc/hosts\n"
tcp dump: "tcpdump "

pee grep: "pgrep "
pee kill: "pkill "
process list: "ps -ef\n"
process top: "htop\n"
locate: "locate "
head: "head "
head <number_small>: "head -n {number_small} "
(where am I|print working directory): "pwd\n"

edit here: insert("edit .\n")

edit <user.text>$:
    insert("edit {text}")

edit:
    insert("edit ")
edit read me:
    insert("edit README.md\n")

# XXX - ~/.edit/sessions/<tab>
edit session:
    insert("edit -S ")

lazy edit:
    insert("edit ")
    insert("$(find . -not -path '*/\.git/*' -name \"**\")")
    key("left")
    key("left")
    key("left")

lazy edit <user.text>:
    insert("edit ")
    insert("$(find . -not -path '*/\.git/*' -name \"*{text}*\")\n")

find <user.text> inside (python|pie) files:
    insert('$(find . -name \"*.py\") | xargs rg -i "{text}"\n')

find <user.text> inside (python|pie) files less:
    insert('$(find . -name \"*.py\") | xargs rg -i "{text}\" | less\n')

man: "man "
so do: "sudo "
d message: "dmesg"
disk usage: "df -h\n"

# extraction
tar ball: "tar -"
tar ball extract [zip]: "tar -xvzf "
tar ball extract bee zip: "tar -xvjf "
(un zip|extract zip): "unzip "

curl: "curl "
double you get: "wget "
download clipboard:
    insert("wget ")
    edit.paste()
    key(enter)

# because talent doesn't seem to like me saying ./
run script: "./"
reverb:
    insert("./")
    key(up enter)

# bash convenience stuff
history: "history\n"
for file loop:
    insert("for FILE in $(ls \"*\"); do \$FILE; done")

network manager log: "sudo journalctl -u NetworkManager.service\n"

# ssh
secure shell: "ssh"
secure shell <user.text>: "ssh {text}\n"
secure copy [<user.text>]:
    insert("scp -r ")
    insert(text or "")
show authorized keys: "vi ~/.ssh/authorized_keys\n"
show pub keys: "cat ~/.ssh/*.pub\n"
edit authorized keys: "vi ~/.ssh/authorized_keys\n"
go secure shell config: "cd ~/.ssh\n"
terminate session:
    key(enter ~ .)

# process management
run top: "htop\n"
pee kill <user.text>: "pkill {text}"
kill <number>: "kill -9 {number}"
kill: "kill -9 "
reboot system: "sudo reboot -h now"

# XXX - from the old standard.talon file
# unsorted
zed s h: "zsh"
diff: "diff "
run vim: "vim "
run make: "make\n"
run see make: "cmake "

(redirect errors|errors to standard out): "2>&1 "

collide: "sha256sum "

###
# Python
###

new pie env: "python -m venv env"
python module: "python -m "
enter python environment: "source env/bin/activate"
leave python environment: "deactivate"
