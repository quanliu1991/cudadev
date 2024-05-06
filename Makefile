SOURCE = ./src/op1_cuda.cu
TARGET := ./build/gpu11.out

CC=nvcc

${TARGET}:${SOURCE}
	${CC} -g ${SOURCE} -o ${TARGET} 

.PHONY:clean
clean:
	-rm -rf ${TARGET}	