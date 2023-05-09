#!/bin/bash

test_line () {
	printf "\e[1;34m"
	echo cmd : "$@"
	echo your result :
	./microshell $@
	echo ""
	echo ""
	echo ""
	sleep 1
	printf "\e[1;0m"
}

test_bash () {
	printf "\e[1;35m"
	echo cmd "$@"
	echo bash result :
	$@
	echo ""
	echo ""
	echo ""
	sleep 1
	printf "\e[1;0m"
}

test_bash_pipe () {
	printf "\e[1;35m"
	echo cmd "$@"
	echo bash result :

}

test_bash_pipe_end () {
	echo ""
	echo ""
	echo ""
	sleep 1
	printf "\e[1;0m"
}

printf "\e[1;32mCompile\n"
gcc  -Wall -Werror -Wextra  microshell.c -o microshell
printf "\e[1;36mTest\n\e[0m"
ulimit -n 30

test_line /bin/ls
test_bash /bin/ls

test_line /bin/cat microshell.c
test_bash /bin/cat microshell.c

test_line /bin/ls microshell.c
test_bash /bin/ls microshell.c

test_line /bin/ls salut
test_bash /bin/ls salut


test_line /bin/ls "|" /usr/bin/grep microshell
test_bash_pipe "/bin/ls | /usr/bin/grep microshell"
/bin/ls | /usr/bin/grep microshell
test_bash_pipe_end

test_line /bin/ls "|" /usr/bin/cat "|" /usr/bin/grep micro
test_bash_pipe "/bin/ls | /usr/bin/cat | /usr/bin/grep micro"
/bin/ls | /usr/bin/cat | /usr/bin/grep micro
test_bash_pipe_end


test_line /bin/ls microshell.c "|" /bin/cat -e "|" /bin/cat -e "|" /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e "|"  /bin/cat -e
test_bash_pipe "/bin/ls microshell.c | /bin/cat -e | /bin/cat -e | /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e"
/bin/ls microshell.c | /bin/cat -e | /bin/cat -e | /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e |  /bin/cat -e
test_bash_pipe_end

test_line /bin/ls ewqew "|" /usr/bin/grep micro "|" /bin/cat -n ";" /bin/echo dernier ";" /bin/echo
test_bash_pipe "/bin/ls ewqew | /usr/bin/grep micro | /bin/cat -n ; /bin/echo dernier ; /bin/echo"
/bin/ls ewqew | /usr/bin/grep micro | /bin/cat -n ; /bin/echo dernier ; /bin/echo
test_bash_pipe_end

test_line /bin/ls "|" /usr/bin/grep micro "|" /bin/cat -n ";" /bin/echo dernier ";" /bin/echo ftest ";"
test_bash_pipe "/bin/ls | /usr/bin/grep micro | /bin/cat -n ; /bin/echo dernier ; /bin/echo ftest ;"
/bin/ls | /usr/bin/grep micro | /bin/cat -n ; /bin/echo dernier ; /bin/echo ftest ;
test_bash_pipe_end

test_line /bin/echo ftest ";" /bin/echo ftewerwerwerst ";" /bin/echo werwerwer ";" /bin/echo qweqweqweqew ";" /bin/echo qwewqeqrtregrfyukui ";"
test_bash_pipe "/bin/echo ftest ; /bin/echo ftewerwerwerst ; /bin/echo werwerwer ; /bin/echo qweqweqweqew ; /bin/echo qwewqeqrtregrfyukui ;"
/bin/echo ftest ; /bin/echo ftewerwerwerst ; /bin/echo werwerwer ; /bin/echo qweqweqweqew ; /bin/echo qwewqeqrtregrfyukui ;
test_bash_pipe_end


test_line /bin/ls "|" /usr/bin/grep micro ";" /bin/ls "|" /usr/bin/grep micro ";" /bin/ls "|" /usr/bin/grep micro ";" /bin/ls "|" /usr/bin/grep micro ";"
test_bash_pipe "/bin/ls | /usr/bin/grep micro ; /bin/ls | /usr/bin/grep micro ; /bin/ls | /usr/bin/grep micro ; /bin/ls | /usr/bin/grep micro ;"
/bin/ls | /usr/bin/grep micro ; /bin/ls | /usr/bin/grep micro ; /bin/ls | /usr/bin/grep micro ; /bin/ls | /usr/bin/grep micro ;
test_bash_pipe_end

test_line blah "|" /bin/echo OK
test_bash_pipe "blah | /bin/echo OK"
blah | /bin/echo OK
test_bash_pipe_end

test_line blah "|" /bin/echo OK ";"
test_bash_pipe "blah | /bin/echo OK ;"
blah | /bin/echo OK ;
test_bash_pipe_end

printf "\e[1;32mDone\e[0m\n"
