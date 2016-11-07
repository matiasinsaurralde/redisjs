redisjs.so: redisjs.o
	gcc -Lnode/out/Release -lnode -o redisjs.so redisjs.o -dynamiclib

redisjs.o: redisjs.c redismodule.h
	gcc -fPIC -std=gnu99 -c -o redisjs.o redisjs.c

clean:
	rm redisjs.o redisjs.so
