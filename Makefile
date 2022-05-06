a.out:
	gcc exo1/main.c

b.out:
	gcc exo2/main.c

clean:
	rm main

test1: a.out
	bash test1.sh

test2: b.out
	bash test2.sh
