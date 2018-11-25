#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#include "hps_0.h"
#define PAGE_SIZE sysconf(_SC_PAGESIZE)


int main(int argc, char const *argv[])
{
    int fd = open("/dev/mem", (O_RDWR | O_SYNC));
    fflush(stdout);
    if (fd < 0) {
        return -1;
    }
    printf("Abriu\n");
    fflush(stdout);

    void *mem = mmap(NULL, NEURON_AV_0_SPAN, (PROT_READ | PROT_WRITE),
            MAP_SHARED, fd, NEURON_AV_0_BASE);
    if (mem == MAP_FAILED) {
        close(fd);
        return -1;
    }
    printf("Mapeou\n");

    volatile uint32_t *input = mem;

    printf("Comecou\n");
    input[0] = 0x00000001;
    input[1] = 0x00000001;

    input[0] = 0x00000001;
    input[1] = 0x00000001;

    input[0] = 0x00000001;
    input[1] = 0x00000002;

    input[0] = 0x00000001;
    input[1] = 0x00000003;

    input[0] = 0x00000001;
    input[1] = 0x00000005;

    input[0] = 0x00000004;
    input[1] = 0x00000002;

    printf("\n%d\n\n", input[0]);
    
    fflush(stdout);
    munmap(mem, NEURON_AV_0_SPAN);
    close(fd);
    printf("Terminou\n");


    return 0;
}
