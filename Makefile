a.out:
	gcc exo1/main.c

clean:
	rm main

test: a.out
	bash test.sh
