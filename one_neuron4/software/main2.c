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
    if (fd < 0) {
        return -1;
    }
    printf("Abriu\n");

    void *mem_lw = mmap(NULL, NEURON_CONTROL_0_SPAN, (PROT_READ | PROT_WRITE),
            MAP_SHARED, fd, NEURON_CONTROL_0_BASE);
    if (mem_lw == MAP_FAILED) {
        close(fd);
        return -1;
    }

    void *mem_ocr = mmap(NULL, HPS_0_AXI_OCRAM_SPAN, (PROT_READ | PROT_WRITE),
            MAP_SHARED, fd, HPS_0_AXI_OCRAM_BASE);
    if (mem_ocr == MAP_FAILED) {
        close(fd);
        return -1;
    }

    printf("Mapeou\n");

    volatile uint32_t *input_lw  = (uint32_t*) mem_lw;
    volatile uint32_t *input_ocr = (uint32_t*) mem_ocr;

    printf("Comecou\n");

    input_lw[0] = 4;
    size_t i;
    // for(i = 0; i < 5000000; i++)
    // {
    //     input_lw[2] = 1;
    // }
    input_lw[2] = 1;


    // while(!(input_lw[3] & 0x1)){
        printf("Done: %d\n", input_lw[3]);
    // }



    for(i = 0; i < 100; i++)
    {
        /* code */
        printf("  [%d]: %lx\n", i, input_ocr[i]);
    }

    // printf("\n[100]: %lx\n", input_ocr[100]);
    // printf("\n[  4]: %lx\n", input_ocr[4]);


    munmap(mem_lw, NEURON_CONTROL_0_SPAN);
    munmap(mem_ocr, ONCHIP_MEMORY2_0_SPAN);
    close(fd);


    printf("Terminou\n");


    return 0;
}
