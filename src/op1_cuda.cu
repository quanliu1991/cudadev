#include <stdio.h>
__global__ void hello_from_gpu()
{
    const int bid = blockIdx.x;
    const int tid = threadIdx.x;
    printf("hello world from the gpu from block id %d, thread id %d \n", bid, tid);
}

int main() 
{
    hello_from_gpu<<<33,5>>>();
    cudaDeviceSynchronize();
    return 0;
}