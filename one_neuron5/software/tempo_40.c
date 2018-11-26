#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <time.h>

#include "hps_0.h"
#include <sys/time.h>

int main(int argc, char const *argv[]) {
    struct timeval  tv1, tv2;
   	gettimeofday(&tv1, NULL);
    int fd = open("/dev/mem", ( O_RDWR | O_SYNC ) );
    if (fd < 0) {
        return -1;
    }

    void *mem_lw = mmap(NULL, NEURON_CONTROL_0_SPAN, (PROT_READ | PROT_WRITE),
            MAP_SHARED, fd, NEURON_CONTROL_0_BASE);
    if (mem_lw == MAP_FAILED) {
        close(fd);
        return -1;
    }


    void *mem_pesos = mmap(NULL, PESOS_SPAN + OCR_SPAN, ( PROT_READ | PROT_WRITE ),
            MAP_SHARED, fd, PESOS_BASE);
    if (mem_pesos == MAP_FAILED) {
        close(fd);
        return -1;
    }
    void *mem_ocr = mem_pesos + (OCR_BASE - PESOS_BASE);


    volatile uint32_t *input_lw  = (uint32_t*) mem_lw;
    volatile uint32_t *input_ocr = (uint32_t*) mem_ocr;
    volatile uint32_t *input_pesos = (uint32_t*) mem_pesos;
    int i;
    for (i = 0; i < 20; i++) {
      input_ocr[0] = 0x5;
    }

    input_pesos[0] = 0x2;

    input_lw[1] = 0x14;
    input_lw[2] = 0x1;

    while (!(input_lw[3] & 0x1)) {
    }
    printf("%x\n", input_lw[2]);


    gettimeofday(&tv2, NULL);
   	printf ("Total time = %f seconds\n",
           (double) (tv2.tv_usec - tv1.tv_usec) / 1000000 +
           (double) (tv2.tv_sec - tv1.tv_sec));

    return 0;
}
