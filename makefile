
flags = -lmingw32 -lpsapi -lm 

dbg = -O0 -g
fast = -O3 -DNDEBUG
compile_lvl = $(dbg)

includes = -Isrc/engine/
flags = $(includes) -std=c11 $(compile_lvl)


ASSET_FILES = 0

library:
	gcc -c ${flags} $(winflags) utils/utils.c -o build/utils.obj
	ar -rc build/utils.a build/utils.obj

