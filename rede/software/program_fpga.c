#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdint.h>
#include <stdio.h>
#include "hps_0.h"

int main(int argc, char const *argv[]) {
    int fd = open("/dev/mem", ( O_RDWR | O_SYNC ) );
    if (fd < 0) {
        return -1;
    }
    printf("Abriu '/dev/mem'\n");

    void *mem_lw = mmap(NULL, NEURON_CONTROL_0_SPAN, (PROT_READ | PROT_WRITE),
            MAP_SHARED, fd, NEURON_CONTROL_0_BASE);
    if (mem_lw == MAP_FAILED) {
        close(fd);
        return -1;
    }
    printf("Abriu LW\n");

    volatile uint32_t *input_lw  = (uint32_t*) mem_lw;
    input_lw[1] = atoi(argv[1]);

    while (!(input_lw[3] & 0x1)) {
    }
    printf("%x  \n", input_lw[0]);

    munmap(mem_lw, NEURON_CONTROL_0_SPAN);
    close(fd);

    return 0;
}
