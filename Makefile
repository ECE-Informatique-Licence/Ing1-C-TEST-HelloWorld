a.out:
	gcc hello.c

b.out:
	gcc main.c

clean:
	rm hello

test: a.out
	bash test.sh
